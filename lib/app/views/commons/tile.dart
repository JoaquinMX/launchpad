import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class Tile extends StatefulWidget {
  late final Color centerColor;
  late final Color outlineColor;
  late final String sound;

  Tile(
      {required this.centerColor,
      required this.outlineColor,
      required this.sound,
      super.key});

  @override
  State<Tile> createState() => _TileState();
}

class _TileState extends State<Tile> {
  bool changeColor = false;

  AudioPlayer player = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        player.play(AssetSource(widget.sound));
        changeColor = true;
        temporalColorChange();
      },
      child: Container(
        width: 100,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            gradient: RadialGradient(
              center: Alignment(0, 0),
              radius: .5,
              colors: changeColor
                  ? [Colors.white, Colors.white]
                  : [widget.centerColor, widget.outlineColor],
              stops: [0, 1.0],
            )),
        clipBehavior: Clip.antiAlias,
      ),
    );
  }

  void temporalColorChange() async {
    setState(() {});
    await Future.delayed(const Duration(milliseconds: 500));
    changeColor = false;
    setState(() {});
  }
}
