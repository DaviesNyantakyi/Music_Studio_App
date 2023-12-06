import 'package:flutter/material.dart';
import 'package:music_studio_app/main.dart';

class MusicCard extends StatefulWidget {
  final String imageUrl;
  final double? width;
  final double? height;
  final Widget playButton;
  final String songTitle;
  final String artist;
  const MusicCard(
      {super.key,
      required this.imageUrl,
      required this.playButton,
      required this.artist,
      required this.songTitle,
      this.height,
      this.width});

  @override
  State<MusicCard> createState() => _MusicCardState();
}

class _MusicCardState extends State<MusicCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              width: widget.width,
              height: widget.height,
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                image: DecorationImage(
                  image: AssetImage(kImageUrl),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              top: 0,
              child: widget.playButton,
            )
          ],
        ),
        Text(
          widget.songTitle,
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        Text(
          widget.artist,
          style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
        ),
      ],
    );
  }
}
