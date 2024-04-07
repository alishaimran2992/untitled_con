import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pakistani Cricket Players',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: PlayerListView(),
    );
  }
}

class PlayerListView extends StatelessWidget {
  final List<String> players = [
    'Shahid Afridi',
    'Wasim Akram',
    'Javed Miandad',
    'Imran Khan',
    'Inzamam-ul-Haq',
    'Saqlain Mushtaq',
    'Younis Khan',
    'Saeed Anwar',
    'Mohammad Yousuf',
    'Shoaib Akhtar'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    backgroundColor:Theme.of(context).colorScheme.inversePrimary,
        title: Text('Pakistani Cricket Players'),
      ),
      body: ListView.builder(
        itemCount: players.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(players[index]),
          );
        },
      ),
    );
  }
}

