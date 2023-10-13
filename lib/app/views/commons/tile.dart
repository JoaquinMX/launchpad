import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Tile extends StatelessWidget {
  late final Color centerColor;
  late final Color outlineColor;
  late final String sound;

  AudioPlayer player = AudioPlayer();
  Tile(
      {required this.centerColor,
      required this.outlineColor,
      required this.sound,
      super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        player.play(AssetSource(sound));
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: RadialGradient(
              center: Alignment(0, 0),
              radius: .5,
              colors: [centerColor, outlineColor],
              stops: [0, 1.0],
            )),
        clipBehavior: Clip.antiAlias,
      ),
    );
  }
}
