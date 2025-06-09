package com.memento.ritual_app

import android.content.ContentValues
import android.content.Intent
import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.net.Uri
import android.os.Build
import android.os.Environment
import android.provider.MediaStore
import android.text.TextUtils
import android.webkit.MimeTypeMap
import android.graphics.Matrix
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File
import java.io.FileOutputStream
import java.io.OutputStream
import java.io.ByteArrayInputStream
import java.util.*

class MainActivity : FlutterActivity() {
    private val CHANNEL = "image_gallery_saver"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler { call, result ->
            when (call.method) {
                "saveImageToGallery" -> {
                    val bytes = call.argument<ByteArray>("imageBytes")
                    val name = call.argument<String>("name") ?: UUID.randomUUID().toString()
                    val quality = call.argument<Int>("quality") ?: 80

                    if (bytes != null) {
                        val saveResult = saveImageToGallery(bytes, name, quality)
                        result.success(saveResult)
                    } else {
                        result.error("NULL_IMAGE", "Image bytes were null", null)
                    }
                }
                else -> result.notImplemented()
            }
        }
    }

    private fun saveImageToGallery(imageBytes: ByteArray, name: String, quality: Int): Map<String, Any?> {
        var fos: OutputStream? = null
        var uri: Uri? = null
        var bitmap: Bitmap? = null
        try {
        //     val originalBitmap = BitmapFactory.decodeByteArray(imageBytes, 0, imageBytes.size)
        //     val bitmap = applyExifRotation(imageBytes, originalBitmap)
        val bitmap = BitmapFactory.decodeByteArray(imageBytes, 0, imageBytes.size)


            val mimeType = "image/jpeg"

            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.Q) {
                val contentValues = ContentValues().apply {
                    put(MediaStore.Images.Media.DISPLAY_NAME, "$name.jpg")
                    put(MediaStore.Images.Media.MIME_TYPE, mimeType)
                    put(MediaStore.Images.Media.RELATIVE_PATH, Environment.DIRECTORY_PICTURES)
                    put(MediaStore.Images.Media.IS_PENDING, 1)
                }

                val resolver = contentResolver
                uri = resolver.insert(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, contentValues)

                if (uri != null) {
                    fos = resolver.openOutputStream(uri)
                    if (fos != null) {
                        bitmap.compress(Bitmap.CompressFormat.JPEG, quality, fos)
                        fos.flush()

                        contentValues.clear()
                        contentValues.put(MediaStore.Images.Media.IS_PENDING, 0)
                        resolver.update(uri, contentValues, null, null)
                    }
                }


            } else {
                val directory = Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES)
                if (!directory.exists()) {
                    directory.mkdirs()
                }

                val file = File(directory, "$name.jpg")
                fos = FileOutputStream(file)
                fos.use {
                    bitmap.compress(Bitmap.CompressFormat.JPEG, quality, it)
                    it.flush()
                }

                fos?.flush()

                uri = Uri.fromFile(file)
                sendBroadcast(Intent(Intent.ACTION_MEDIA_SCANNER_SCAN_FILE, uri))
            }

            return mapOf(
                "isSuccess" to (uri != null),
                "filePath" to uri?.toString(),
                "errorMessage" to null
            )

        } catch (e: Exception) {
            e.printStackTrace()
            return mapOf(
                "isSuccess" to false,
                "filePath" to null,
                "errorMessage" to e.localizedMessage
            )
        } finally {
            fos?.close()
            bitmap?.recycle()
        }
    }



    // private fun applyExifRotation(imageBytes: ByteArray, bitmap: Bitmap): Bitmap {
    //     val inputStream = ByteArrayInputStream(imageBytes)
    //     val exif = ExifInterface(inputStream)

    //     val orientation = exif.getAttributeInt(
    //         ExifInterface.TAG_ORIENTATION,
    //         ExifInterface.ORIENTATION_NORMAL
    //     )

    //     val matrix = Matrix()
    //     when (orientation) {
    //         ExifInterface.ORIENTATION_ROTATE_90 -> matrix.postRotate(90f)
    //         ExifInterface.ORIENTATION_ROTATE_180 -> matrix.postRotate(180f)
    //         ExifInterface.ORIENTATION_ROTATE_270 -> matrix.postRotate(270f)
    //         else -> return bitmap
    //     }

    //     return Bitmap.createBitmap(bitmap, 0, 0, bitmap.width, bitmap.height, matrix, true)
    // }

}
