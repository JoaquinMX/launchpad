import 'package:flutter/material.dart';

import 'commons/tile.dart';

class HomePage extends StatelessWidget {
  static const soundList = [
    '1.mp3',
    '2.mp3',
    '3.mp3',
    '4.mp3',
    '5.mp3',
    '6.mp3',
    '7.mp3',
    '8.mp3',
    '9.mp3',
    '10.mp3',
    '11.mp3',
    '12.mp3',
    '13.mp3',
    '14.mp3',
    '15.mp3',
    '16.mp3',
    '17.mp3',
    '18.mp3',
    '19.mp3',
    '20.wav',
    '21.mp3',
    '22.wav',
    '23.wav',
    '24.wav',
    '25.wav',
    '26.wav',
    '27.wav',
    '28.wav',
  ];
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Launchpad'),
      ),
      body: Center(
        child: GridView(
          padding: EdgeInsets.all(10),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5,
          ),
          children: listOfTiles(context),
        ),
      ),
    );
  }

  List<Widget> listOfTiles(BuildContext context) {
    List<Widget> tiles = [];
    int soundListLength = soundList.length;
    for (int i = 0; i < soundListLength; i++) {
      tiles.add(
        Tile(
          sound: soundList[soundListLength - 1 - i],
          centerColor: i % 4 == 0
              ? Theme.of(context).colorScheme.tertiaryContainer
              : i % 2 == 0
                  ? Theme.of(context).colorScheme.secondaryContainer
                  : Theme.of(context).colorScheme.primaryContainer,
          outlineColor: i % 4 == 0
              ? Theme.of(context).colorScheme.tertiary
              : i % 2 == 0
                  ? Theme.of(context).colorScheme.secondary
                  : Theme.of(context).colorScheme.primary,
        ),
      );
    }
    return tiles.reversed.toList();
  }
}
