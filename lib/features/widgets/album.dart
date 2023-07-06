import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  const Album({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Stack(
        children: [
          Container(
            width: 128,
            height: 128,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.asset(
              'assets/images/album.png',
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            child: Image.asset('assets/icons/play.png'),
            bottom: 8,
            right: 8,
          )
        ],
      ),
      const SizedBox(
        height: 8,
      ),
      const Text("ArTi Untuk Cinta",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
          )),
      const SizedBox(
        height: 5,
      ),
      const Text("Arsy Widianto, Tiar...",
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
          )),
    ]);
  }
}
