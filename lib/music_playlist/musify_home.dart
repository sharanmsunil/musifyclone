import 'package:flutter/material.dart';
import 'package:musifyclone/music_playlist/recommendedsongs.dart';
import 'package:musifyclone/music_playlist/suggestedplay.dart';


class Musifyhome extends StatelessWidget {
  const Musifyhome({super.key});

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
                  "Musify.",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF2B1BE)),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Suggested playlists',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFFF2B1BE)),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  child: SuggestedMusicPlaylists()),
              // SizedBox(height: 200,),
              const Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    'Recommended for you',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFFF2B1BE)),
                  ),

                ],
              ),
             SizedBox(
                 height: MediaQuery.of(context).size.height,
                 child: RecommendedSongs())
            ],
          ),
      ),
    );
  }
}
