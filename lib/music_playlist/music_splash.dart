import 'dart:async';
import 'package:flutter/material.dart';

import 'home.dart';


class MusicSplash extends StatefulWidget {
  const MusicSplash({super.key});

  @override
  State<MusicSplash> createState() => _MusicSplashState();
}

class _MusicSplashState extends State<MusicSplash> {
  @override
  void initState() {
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const MusicHome()));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.music_note,
              size: 80,
              color: Color(0xFFF2B1BE),
            ),
            Text(
              'Musify',
              style: TextStyle(
                  color: Color(0xFFF2B1BE),
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
