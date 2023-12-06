import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:music_studio_app/main.dart';
import 'package:music_studio_app/utilities/constant.dart';
import 'package:music_studio_app/widgets/artist_card.dart';
import 'package:music_studio_app/widgets/custom_button.dart';

import '../widgets/music_card.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              title(),
              const SizedBox(height: 24),
              _searchBar(),
              const SizedBox(height: 16),
              _catergories(),
              const SizedBox(height: 16),
              _trendsFilter(),
              _trends(),
              const SizedBox(height: 18),
              _feuturedArtists()
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: kBlue,
        unselectedItemColor: kBlack,
        iconSize: 24,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          currentIndex = index;
          setState(() {});
        },
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.house),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(FontAwesomeIcons.magnifyingGlass),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.message,
            ),
            label: 'Subscriptions',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
            ),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Row _trendsFilter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          'Today in Trend',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: const Row(
            children: [
              Text(
                'See All',
                style: TextStyle(fontSize: 14, color: Colors.blue),
              ),
              Icon(
                FontAwesomeIcons.chevronRight,
                size: 16,
                color: Colors.blue,
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget title() {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      child: const Text(
        'Find the best music for you!',
        style: TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
          height: 1,
        ),
      ),
    );
  }

  Widget _searchBar() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: SizedBox(
            height: 54,
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Music Search',
                prefixIcon: const Icon(
                  FontAwesomeIcons.magnifyingGlass,
                  size: 18,
                ),
                fillColor: Colors.grey.shade300,
                filled: true,
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 16),
        CustomElvatedButton(
          onPressed: () {},
          radius: 16,
          backgroundColor: Colors.blue,
          child: const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Icon(
              FontAwesomeIcons.sliders,
              size: 16,
              color: Colors.white,
            ),
          ),
        )
      ],
    );
  }

  Widget _catergories() {
    return Flexible(
      child: SizedBox(
        height: 60,
        child: ListView.separated(
          itemCount: 10,
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, number) {
            return GestureDetector(
              child: Chip(
                avatar: const CircleAvatar(
                  backgroundImage: NetworkImage(''),
                ),
                label: const Text('Hip Hop'),
                side: BorderSide.none,
                backgroundColor: Colors.grey.shade200,
              ),
              onTap: () {},
            );
          },
          separatorBuilder: (context, item) => const SizedBox(width: 10),
        ),
      ),
    );
  }

  Widget _trends() {
    return SizedBox(
      height: 200,
      child: ListView.separated(
        itemCount: 10,
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, number) {
          return MusicCard(
            height: 140,
            width: 140,
            artist: 'justDVSN',
            songTitle: 'Jehova',
            imageUrl: kImageUrl,
            playButton: GestureDetector(
              onTap: () {},
              child: const Icon(
                FontAwesomeIcons.circlePlay,
                color: Colors.white,
                size: 42,
              ),
            ),
          );
        },
        separatorBuilder: (context, item) => const SizedBox(width: 10),
      ),
    );
  }

  Widget _feuturedArtists() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Today in Trend',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            GestureDetector(
              onTap: () {},
              child: const Row(
                children: [
                  Text(
                    'See All',
                    style: TextStyle(fontSize: 14, color: Colors.blue),
                  ),
                  Icon(
                    FontAwesomeIcons.chevronRight,
                    size: 16,
                    color: Colors.blue,
                  ),
                ],
              ),
            )
          ],
        ),
        const SizedBox(height: 12),
        SizedBox(
          height: 240,
          child: ListView.separated(
            itemCount: 10,
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, number) {
              return const ArtistCard(
                profileRadius: 40,
                imageUrl: kImageUrl,
                artist: 'Davies',
                streamsAmount: '200.00k lintners',
              );
            },
            separatorBuilder: (context, item) => const SizedBox(width: 10),
          ),
        ),
      ],
    );
  }
}
