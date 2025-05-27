import UIKit
import Flutter
import Photos


@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    GallerySaver.register(with: self.registrar(forPlugin: "GallerySaver")!)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
}
}

class GallerySaver: NSObject {
    static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "image_gallery_saver", binaryMessenger: registrar.messenger())
        let instance = GallerySaver()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
}

extension GallerySaver: FlutterPlugin {
    func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        guard call.method == "saveImageToGallery",
              let args = call.arguments as? [String: Any],
              let byteData = (args["imageBytes"] as? FlutterStandardTypedData)?.data,
              let image = UIImage(data: byteData),
              let quality = args["quality"] as? Int,
              let isReturnPath = args["isReturnImagePathOfIOS"] as? Bool else {
            result(FlutterError(code: "INVALID_ARGUMENTS", message: "Missing or invalid arguments", details: nil))
            return
        }

        let compressedImageData = image.jpegData(compressionQuality: CGFloat(quality) / 100.0)
        let finalImage = compressedImageData.flatMap { UIImage(data: $0) } ?? image

        if isReturnPath {
            saveWithPath(image: finalImage, result: result)
        } else {
            UIImageWriteToSavedPhotosAlbum(finalImage, self, #selector(saveCallback(_:didFinishSavingWithError:contextInfo:)), UnsafeMutableRawPointer(Unmanaged.passRetained(SaveResult(result)).toOpaque()))
        }
    }

    func saveWithPath(image: UIImage, result: @escaping FlutterResult) {
        var localId: String?

        PHPhotoLibrary.shared().performChanges({
            let request = PHAssetChangeRequest.creationRequestForAsset(from: image)
            localId = request.placeholderForCreatedAsset?.localIdentifier
        }) { success, error in
            guard success, let id = localId else {
                result(["isSuccess": false, "errorMessage": error?.localizedDescription ?? "Save failed"])
                return
            }

            let asset = PHAsset.fetchAssets(withLocalIdentifiers: [id], options: nil).firstObject
            let options = PHContentEditingInputRequestOptions()
            asset?.requestContentEditingInput(with: options) { input, _ in
                let path = input?.fullSizeImageURL?.absoluteString
                result(["isSuccess": true, "filePath": path ?? ""])
            }
        }
    }

    @objc private func saveCallback(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeMutableRawPointer?) {
        let saveResult = Unmanaged<SaveResult>.fromOpaque(contextInfo!).takeRetainedValue()
        if let err = error {
            saveResult.result(["isSuccess": false, "errorMessage": err.localizedDescription])
        } else {
            saveResult.result(["isSuccess": true])
        }
    }

    class SaveResult {
        let result: FlutterResult
        init(_ result: @escaping FlutterResult) {
            self.result = result
        }
    }
}
