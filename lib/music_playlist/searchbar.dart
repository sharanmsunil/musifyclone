import 'package:flutter/material.dart';

class SearchBarPlayList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        fillColor: const Color(0xFF2A2A2A),
        filled: true,
        hintText: 'Search...',
        contentPadding:
        const EdgeInsets.only(left: 30,top: 35),
        hintStyle: const TextStyle(fontSize: 18, color: Color(0xFFF2B1BE)),
        suffixIcon: const Icon(
          Icons.search,
          color: Color(0xFFF2B1BE),
        ),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF505050),width: 2),
            borderRadius: BorderRadius.circular(30)
        ),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(0xFF505050),width: 2),
            borderRadius: BorderRadius.circular(30)
        ),),
    );
  }
}
