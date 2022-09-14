import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubePage extends StatefulWidget {
  final String? ytKey;
  final String? title;

  YoutubePage({this.ytKey, this.title});

  @override
  State<YoutubePage> createState() => _YoutubePageState();
}

class _YoutubePageState extends State<YoutubePage> {
  late YoutubePlayerController _controller;
  bool _isPLayerReady = false;
  bool isFullScreen = false;
  PlayerState? _playerState;
  YoutubeMetaData? _videoMetaData;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
        initialVideoId: widget.ytKey!,
        flags: const YoutubePlayerFlags(
            autoPlay: false,
            mute: false,
            controlsVisibleAtStart: true,
            forceHD: true))
      ..addListener(listener);
    _playerState = PlayerState.unknown;
    _videoMetaData = const YoutubeMetaData();
  }

  void listener() {
    if (mounted && isFullScreen != _controller.value.isFullScreen) {
      isFullScreen = _controller.value.isFullScreen;
      setState(() {});
    }
    if (mounted && !_controller.value.isFullScreen) {
      setState(() {
        _playerState = _controller.value.playerState;
        _videoMetaData = _controller.metadata;
      });
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  void deactivate() {
    // Pauses video while navigating to next page.
    _controller.pause();
    super.deactivate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: isFullScreen == true
          ? null
          : AppBar(
        title: Text(widget.title!),
        backgroundColor: const Color(0xff0e0e0e),
        centerTitle: true,
      ),
      backgroundColor: const Color(0xff0e0e0e),
      body: Center(
        child: Center(
          child: YoutubePlayer(
            progressColors: const ProgressBarColors(
                handleColor: Colors.red,
                backgroundColor: Colors.red,
                bufferedColor: Colors.red),
            controller: _controller,
            liveUIColor: Colors.amber,
            topActions: <Widget>[
              const SizedBox(
                width: 8.0,
              ),
              Expanded(
                  child: Text(
                    _controller.metadata.title,
                    style: const TextStyle(color: Colors.white, fontSize: 10.0),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}