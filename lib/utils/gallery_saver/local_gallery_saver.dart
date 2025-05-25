import 'dart:async';
import 'package:flutter/services.dart';

class LocalGallerySaver {
  static const MethodChannel _channel = MethodChannel('image_gallery_saver');

  static Future<dynamic> saveImage(
    Uint8List imageBytes, {
    int quality = 80,
    String? name,
    bool isReturnImagePathOfIOS = false,
  }) async {
    final result =
        await _channel.invokeMethod('saveImageToGallery', <String, dynamic>{
      'imageBytes': imageBytes,
      'quality': quality,
      'name': name,
      'isReturnImagePathOfIOS': isReturnImagePathOfIOS,
    });
    return result;
  }

  static Future<dynamic> saveFile(
    String filePath, {
    String? name,
    bool isReturnPathOfIOS = false,
  }) async {
    final result =
        await _channel.invokeMethod('saveFileToGallery', <String, dynamic>{
      'file': filePath,
      'name': name,
      'isReturnPathOfIOS': isReturnPathOfIOS,
    });
    return result;
  }
}
