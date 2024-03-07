import 'dart:math';
import 'package:flutter/material.dart';

import 'home.dart';


class NowPlaying extends StatelessWidget {
  final String img;
  final String songName;
  final String artistName;
  const NowPlaying({super.key,required this.img, required this.songName, required this.artistName});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                  child: Transform.rotate(
                      angle: 270 * pi / 180,
                      child: const Icon(
                        Icons.chevron_left,
                        color: Color(0xFFF2B1BE),
                        size: 30,
                      )),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const MusicHome()));
                  }),
              const SizedBox(
                width: 70,
              ),
              const Text('Now playing',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF2B1BE)))
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            height: 300,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image:  DecorationImage(
                    image: AssetImage(img),fit: BoxFit.cover)),
          ),
          const SizedBox(
            height: 30,
          ),
           Text(songName,
              style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFFF2B1BE))),
          const SizedBox(
            height: 10,
          ),
           Text(
            artistName,
            style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Stack(children: [
            Container(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Divider(
                thickness: 5,
                color: Colors.white,
              ),
            ),
            Positioned(
              left: 35,
              child: Container(
                height: 20,
                width: 20,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFFF2B1BE)),
              ),
            )
          ]),
          const SizedBox(
            height: 10,
          ),
          const Row(
            children: [
              SizedBox(
                width: 20,
              ),
              Text(
                '00:03',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
              SizedBox(
                width: 250,
              ),
              Text(
                '03:21',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 350,
            height: 100,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.download,
                      color: Color(0xFFF2B1BE),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.volume_off,
                      color: Colors.white,
                    )
                  ],
                ),
                const SizedBox(
                  width: 15,
                ),
                const Icon(
                  Icons.repeat,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.skip_previous,
                  color: Colors.grey,
                  size: 70,
                ),
                Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Color(0xFFF2B1BE)),
                    ),
                    const Icon(
                      Icons.pause,
                      color: Colors.white,
                      size: 50,
                    )
                  ],
                ),
                const Icon(
                  Icons.skip_next,
                  color: Colors.grey,
                  size: 70,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Icons.repeat_one,
                  color: Colors.white,
                ),
                const SizedBox(
                  width: 15,
                ),
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.star_border,
                      color: Colors.white,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Icon(
                      Icons.library_music,
                      color: Colors.white,
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Playlist',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF2B1BE))),
              SizedBox(
                width: 10,
              ),
              Text('|',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              SizedBox(
                width: 10,
              ),
              Text('Lyrics',
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFFF2B1BE))),
            ],
          )
        ],
      ),
    ));
  }
}
