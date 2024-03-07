import 'package:flutter/material.dart';
import 'package:musifyclone/music_playlist/playlists_tab.dart';

import 'musify_home.dart';

class MusicHome extends StatefulWidget {
  const MusicHome({super.key});

  @override
  State<MusicHome> createState() => _MusicHomeState();
}

class _MusicHomeState extends State<MusicHome> {
  int _selectedIndex = 0;
  TextStyle hmm = const TextStyle(
      fontSize: 20, fontWeight: FontWeight.bold, color: Color(0xFFF2B1BE));
  final _musicscreens = [
    const Musifyhome(),
    // Text('Home',
    //     style: TextStyle(
    //         fontSize: 30, fontWeight: FontWeight.bold, color: Color(0xFFF2B1BE))),
    const Text('Search',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF2B1BE))),
    const PlaylistEx(),
    const Text('Settings',
        style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Color(0xFFF2B1BE))),
  ];

  void _tappedScreen(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: _musicscreens.elementAt(_selectedIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white,
          unselectedLabelStyle: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
              color: Color(0xFFF2B1BE)),
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: const Icon(
                  Icons.home,
                ),
                activeIcon: Text(
                  'Home',
                  style: hmm,
                ),
                label: ''),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: const Icon(
                  Icons.search,
                ),
                activeIcon: Text(
                  'Search',
                  style: hmm,
                ),
                label: ''),
            BottomNavigationBarItem(
              backgroundColor: Colors.black,
              icon: const Icon(Icons.playlist_add),
              activeIcon: Text(
                'Playlists',
                style: hmm,
              ),
              label: '',
            ),
            BottomNavigationBarItem(
                backgroundColor: Colors.black,
                icon: const Icon(
                  Icons.more_horiz_rounded,
                ),
                activeIcon: Text(
                  'Settings',
                  style: hmm,
                ),
                label: '')
          ],
          currentIndex: _selectedIndex,
          onTap: _tappedScreen,
        ),
      ),
    );
  }
}
