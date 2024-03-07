import 'package:flutter/material.dart';

class SuggestedMusicPlaylists extends StatelessWidget {
  final _sugplaylistpic = [
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

   SuggestedMusicPlaylists({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        height: 200,
        child: ListView(
          shrinkWrap: true,
          physics: const ScrollPhysics(),
          scrollDirection: Axis.horizontal,
          children: List.generate(
              _sugplaylistpic.length,
              (index) => Padding(
                    padding: const EdgeInsets.all(5),
                    child: Container(
                      height: 150,
                      width: 200,
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.all(Radius.circular(20)),
                          image: DecorationImage(
                              image: AssetImage(_sugplaylistpic[index]),fit: BoxFit.cover)),
                    ),
                  )),
        ),
      ),
    );
  }
}
