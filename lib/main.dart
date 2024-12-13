import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music 2024',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const AllSongs(title: 'Music 2024'),
    );
  }
}

class AllSongs extends StatefulWidget {
  const AllSongs({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  _AllSongsState createState() => _AllSongsState();
}

class _AllSongsState extends State<AllSongs> {
  final List<Map<String, String>> _songs = [
    {"title": "Song 1", "artist": "Artist A"},
    {"title": "Song 2", "artist": "Artist B"},
    {"title": "Song 3", "artist": "Artist C"},
    {"title": "Song 4", "artist": "Artist D"},
    {"title": "Song 5", "artist": "Artist E"},
    {"title": "Song 6", "artist": "Artist F"},
    {"title": "Song 7", "artist": "Artist G"},
    {"title": "Song 8", "artist": "Artist H"},
    {"title": "Song 9", "artist": "Artist I"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: _songs.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.music_note),
            title: Text(_songs[index]["title"]!),
            subtitle: Text(_songs[index]["artist"]!),
            trailing: IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {},
            ),
          );
        },
      ),
    );
  }
}
