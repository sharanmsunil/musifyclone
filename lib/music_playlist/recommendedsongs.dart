import 'package:flutter/material.dart';

import 'now_playing.dart';


class RecommendedSongs extends StatelessWidget {
  final _names = [
    "Attention",
    "Lucid Dreams",
    "Counting Stars",
    "Radioactive",
    "In the End",
    "Save Your Tears",
    "Animals",
    "I Wanna Be Yours",
    "Symphony",
    "Diamonds",
  ];

  final _artist = [
    "Charlie Puth",
    "Juice WRLD",
    "OneRepublic",
    "Imagine Dragons",
    "Linkin Park",
    "The Weeknd",
    "Maroon 5",
    "Arctic Monkeys",
    "Clean Bandit",
    "Rihanna",
  ];

  final _profilepic = [
    "assets/recommended/Attention_(Charlie_Puth_song)_single_cover.svg.png",
    "assets/recommended/Luciddreams.jpg",
    "assets/recommended/countingstars.jpg",
    "assets/recommended/Radioactive.jpg",
    "assets/recommended/intheend.jpg",
    "assets/recommended/saveurtears.jpg",
    "assets/recommended/animals.jpg",
    "assets/recommended/iwannabeurs.jpg",
    "assets/recommended/symphone.jpg",
    "assets/recommended/diamonds.jpg",
  ];

   RecommendedSongs({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children:
            List.generate(
              _names.length,
                  (index) => //Card(
              //child:
              GestureDetector(
                child: ListTile(
                  leading: Container(
                    width: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: DecorationImage(image: AssetImage(_profilepic[index]),fit: BoxFit.cover)
                    ),
                  ),
                  title: Text(_names[index],style: const TextStyle(color: Color(0xFFF2B1BE),fontWeight: FontWeight.bold),),
                  subtitle: Text(_artist[index],style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                  trailing: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.star_border, color: Color(0xFFF2B1BE)),
                      SizedBox(width: 20,),
                      Icon(Icons.download_outlined, color: Color(0xFFF2B1BE)),
                    ],
                  ),
                ),
              onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=> NowPlaying(img: _profilepic[index], songName: _names[index], artistName: _artist[index],)));
              },
              ),
            ))
      ;
  }
}
