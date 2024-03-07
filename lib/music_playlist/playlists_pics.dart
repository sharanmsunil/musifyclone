import 'package:flutter/material.dart';

class MusicPaylists extends StatelessWidget {
  var playlistpic = [
    'assets/playlist/bestofrap.jpg',
    'assets/playlist/carmusic.jpg',
    'assets/playlist/indiemusic.jpg',
    'assets/playlist/lofiremix.jpg',
    'assets/playlist/popmusic.jpg',
    'assets/playlist/rapplaylist.jpg',
    'assets/playlist/tiktokmusic.jpg',
    'assets/playlist/top10spotify.jpg',
    'assets/playlist/top50global.jpg',
    'assets/playlist/weekendsongs.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return GridView(
      physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, mainAxisSpacing: 30, crossAxisSpacing: 30),
        children: List.generate(
            playlistpic.length,
            (index) => Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                     image: DecorationImage(
                         image: AssetImage(playlistpic[index]))
                  ),
                )));
  }
}

