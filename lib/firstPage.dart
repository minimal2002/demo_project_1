import 'package:demo_project_1/Pages/user/main_drawer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  void initState() {
    super.initState();
    // navigating to Homepage
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const MainDrawer());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffD0E4FF),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Logo
            Image.asset(
              'assets/images/Roommatchh.gif',
              width: double.infinity,
            ),
          ],
        ),
      ),
    );
  }
}
