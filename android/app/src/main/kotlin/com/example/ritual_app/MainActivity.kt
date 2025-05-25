package com.example.ritual_app

import android.graphics.Bitmap
import android.graphics.BitmapFactory
import android.os.Environment
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel
import java.io.File
import java.io.FileOutputStream
import java.io.OutputStream
import java.util.UUID

class MainActivity: FlutterActivity() {
    private val CHANNEL = "image_gallery_saver"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, CHANNEL).setMethodCallHandler {
                call, result ->
            when (call.method) {
                "saveImageToGallery" -> {
                    val bytes = call.argument<ByteArray>("imageBytes")
                    val name = call.argument<String>("name") ?: UUID.randomUUID().toString()
                    val quality = call.argument<Int>("quality") ?: 80

                    if (bytes != null) {
                        val path = saveImageToGallery(bytes, name, quality)
                        result.success(mapOf("isSuccess" to (path != null), "filePath" to path))
                    } else {
                        result.error("NULL_IMAGE", "Image bytes were null", null)
                    }
                }

                "saveFileToGallery" -> {
                    val filePath = call.argument<String>("file")
                    val name = call.argument<String>("name") ?: UUID.randomUUID().toString()
                    if (filePath != null) {
                        val savedPath = saveFileToGallery(filePath, name)
                        result.success(mapOf("isSuccess" to (savedPath != null), "filePath" to savedPath))
                    } else {
                        result.error("NULL_FILE", "File path was null", null)
                    }
                }

                else -> result.notImplemented()
            }
        }
    }

    private fun saveImageToGallery(imageBytes: ByteArray, name: String, quality: Int): String? {
        return try {
            val bitmap = BitmapFactory.decodeByteArray(imageBytes, 0, imageBytes.size)
            val file = File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "$name.jpg")
            val out: OutputStream = FileOutputStream(file)
            bitmap.compress(Bitmap.CompressFormat.JPEG, quality, out)
            out.flush()
            out.close()
            file.absolutePath
        } catch (e: Exception) {
            e.printStackTrace()
            null
        }
    }

    private fun saveFileToGallery(path: String, name: String): String? {
        return try {
            val srcFile = File(path)
            val destFile = File(Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_PICTURES), "$name.jpg")
            srcFile.copyTo(destFile, overwrite = true)
            destFile.absolutePath
        } catch (e: Exception) {
            e.printStackTrace()
            null
        }
    }
}

// package com.example.ritual_app

// import io.flutter.embedding.android.FlutterActivity

// class MainActivity: FlutterActivity()
