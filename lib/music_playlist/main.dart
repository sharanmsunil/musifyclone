import 'package:flutter/material.dart';

import 'music_splash.dart';


void main()
{
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MusicSplash(),

    );
  }
}
