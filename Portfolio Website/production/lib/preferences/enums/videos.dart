import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

enum VideoAsset {
  lakeOne,
  lakeTwo,

  manOne
}

extension ext on VideoAsset {
  VideoPlayerController get controller {
    switch (this) {
      case VideoAsset.lakeOne:
        return VideoPlayerController.asset('videos/lake-one.mp4');

      case VideoAsset.lakeTwo:
        return VideoPlayerController.asset('videos/lake-two.mp4');

      case VideoAsset.manOne:
        return VideoPlayerController.asset('videos/human-one.mp4');
    }
  }
}
