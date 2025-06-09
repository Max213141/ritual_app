// lib/screens/memory_page_view_screen/widgets/photo_tab_widget.dart

import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:ritual_app/screens/memory_desk_view_screen/widgets/media_grid_widget.dart';
import 'package:ritual_app/utils/utils.dart';

class PhotoTabWidget extends StatelessWidget {
  final List<String> photoUrls;
  const PhotoTabWidget({
    super.key,
    required this.photoUrls,
  });

  Future<Uint8List?> _fetchImageBytes(String url) async {
    final resp = await http.get(Uri.parse(url));
    if (resp.statusCode == 200) return resp.bodyBytes;
    return null;
  }

  @override
  Widget build(BuildContext context) {
    final l10n = l10nOf(context);
    if (photoUrls.isEmpty) {
      return Padding(
        padding: EdgeInsets.all(24),
        child: Center(
          child: Text(
            l10n.mdScreenPhotoEmpty,
          ),
        ),
      );
    }
    return MediaGridWidget(
      mediaList: photoUrls,
      getMedia: _fetchImageBytes,
    );
  }
}
