import 'package:flutter/material.dart';
import 'package:musifyclone/music_playlist/playlists_pics.dart';
import 'package:musifyclone/music_playlist/searchbar.dart';


class PlaylistEx extends StatelessWidget {
  const PlaylistEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:  SingleChildScrollView(
        physics: const ScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            const Center(
              child: Text(
                'Playlists',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF2B1BE)),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SearchBarPlayList(),
            const SizedBox(
              height: 50,
            ),
            MusicPaylists()
          ],
        ),
      ),
    );
  }
}
