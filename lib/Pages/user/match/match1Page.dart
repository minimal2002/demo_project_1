import 'package:flutter/material.dart';

class Match1page extends StatefulWidget {
  const Match1page({super.key});

  @override
  State<Match1page> createState() => _Match1pageState();
}

class _Match1pageState extends State<Match1page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff96B1E1),
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: const Text(
          'Match',
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
        ),
      ),
      body: const Text('Match'),
    );
  }
}
