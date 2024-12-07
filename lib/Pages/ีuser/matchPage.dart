import 'package:flutter/material.dart';

class Matchpage extends StatefulWidget {
  const Matchpage({super.key});

  @override
  State<Matchpage> createState() => _MatchpageState();
}

class _MatchpageState extends State<Matchpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Text('Match Page'),
    );
  }
}