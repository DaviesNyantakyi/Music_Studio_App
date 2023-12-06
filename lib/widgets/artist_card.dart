import 'package:flutter/material.dart';
import 'package:music_studio_app/widgets/custom_button.dart';

class ArtistCard extends StatefulWidget {
  final String imageUrl;
  final String streamsAmount;
  final String artist;
  final double profileRadius;
  final Function()? onPressed;
  const ArtistCard({
    super.key,
    required this.imageUrl,
    required this.artist,
    required this.streamsAmount,
    required this.profileRadius,
    this.onPressed,
  });

  @override
  State<ArtistCard> createState() => _ArtistCardState();
}

class _ArtistCardState extends State<ArtistCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
        color: Colors.blue.withOpacity(0.14),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            radius: widget.profileRadius,
            backgroundColor: Colors.blue,
            child: CircleAvatar(
              radius: widget.profileRadius - 2,
              backgroundImage: AssetImage(widget.imageUrl),
            ),
          ),
          const SizedBox(height: 4),
          Text(
            widget.artist,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            widget.streamsAmount,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey.shade600,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(height: 12),
          CustomElvatedButton(
            radius: 20,
            backgroundColor: Colors.black,
            onPressed: widget.onPressed,
            child: const Text(
              'Subscribe',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
