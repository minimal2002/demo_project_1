import 'package:flutter/material.dart';

class Accountpage extends StatefulWidget {
  const Accountpage({super.key});

  @override
  State<Accountpage> createState() => _AccountpageState();
}

class _AccountpageState extends State<Accountpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
          child: Text(
        'account',
        style: TextStyle(fontSize: 30),
      )),
    );
  }
}
