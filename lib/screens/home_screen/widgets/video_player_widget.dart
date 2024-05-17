import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  final VideoPlayerController controller;

  final String? filePath;
  const VideoPlayerWidget({
    super.key,
    this.filePath,
    required this.controller,
  });

  @override
  VideoPlayerWidgetState createState() => VideoPlayerWidgetState();
}

class VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  bool initialized = false;
  static const double volume = kIsWeb ? 0.0 : 1.0;

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_onVideoControllerUpdate);
  }

  @override
  void dispose() {
    widget.controller.removeListener(_onVideoControllerUpdate);
    super.dispose();
  }

  void _onVideoControllerUpdate() {
    if (!mounted) {
      return;
    }
    if (initialized != widget.controller.value.isInitialized) {
      initialized = widget.controller.value.isInitialized;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    if (initialized) {
      return Center(
        child: AspectRatio(
          aspectRatio: widget.controller.value.aspectRatio,
          child: VideoPlayer(widget.controller),
        ),
      );
    } else {
      return Container();
    }
  }
}
