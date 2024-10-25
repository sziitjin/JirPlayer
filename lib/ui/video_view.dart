/*年轻人，只管向前看，不要管自暴自弃者的话*/

import 'package:fijkplayer/fijkplayer.dart';
import 'package:flutter/material.dart';
import 'package:jirplayer/jirplayer.dart';

///create by itz on 2024-10-22 11:39
///desc :
class VideoView extends StatefulWidget {
  final JirPlayer player;
  final FijkFit fit;

  const VideoView(this.player, {super.key, this.fit = FijkFit.contain});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: onTapVideo,
        child: Stack(
          children: [
            AbsorbPointer(absorbing: true, child: FijkView(player: widget.player, fit: widget.fit)),
            if (widget.player.state == FijkState.paused)
              Align(
                alignment: Alignment.center,
                child: Image.asset('asset/images/play.png', width: 50, height: 50),
              )
          ],
        ),
      ),
    );
  }

  Future<void> onTapVideo() async {
    if (widget.player.state == FijkState.paused) {
      await widget.player.start();
      setState(() {});
    } else {
      await widget.player.pause();
      setState(() {});
    }
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    widget.player.release();
  }
}
