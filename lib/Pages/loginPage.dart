import 'package:demo_project_1/Pages/usertypePage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:developer';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  bool hideText = true;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xffD0E4FF),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 10, 40, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                     Text(
                      'RoomMatch',
                      style: TextStyle(
                        fontSize: Get.textTheme.displaySmall?.fontSize,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff2C34FF),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.05),
                     Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Email',
                        style: TextStyle(
                          fontSize: Get.textTheme.titleLarge?.fontSize,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    TextField(
                      // controller: emailCtl,
                      keyboardType: TextInputType.emailAddress,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.email, color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.03),
                     Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Password',
                        style: TextStyle(fontSize: Get.textTheme.titleLarge?.fontSize),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.01),
                    TextField(
                      // controller: passwordCtl,
                      obscureText: hideText,
                      style: const TextStyle(color: Colors.black),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: const Icon(Icons.lock, color: Colors.grey),
                        suffixIcon: IconButton(
                          icon: Icon(
                              hideText
                                  ? Icons.visibility_off
                                  : Icons.visibility,
                              color: Colors.grey),
                          onPressed: () {
                            setState(() {
                              hideText = !hideText;
                            });
                          },
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25.0),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    Align(
                      alignment: Alignment.center,
                      child: GestureDetector(
                        onTap: () {
                          // Navigate to forgot password page
                        },
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            color: const Color(0xff0701FF),
                            fontWeight: FontWeight.bold,
                            fontSize: Get.textTheme.titleMedium?.fontSize,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    ElevatedButton(
                      onPressed: () {
                        // Handle login action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xffFFEFB5),
                        padding: const EdgeInsets.symmetric(vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Login',
                            style: TextStyle(
                                fontSize: Get.textTheme.titleMedium?.fontSize,
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    Row(
                      children: [
                        const Expanded(
                            child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        )),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          child: Text(
                            'OR',
                            style: TextStyle(color: Colors.black, fontSize: Get.textTheme.bodyLarge?.fontSize),
                          ),
                        ),
                        const Expanded(
                            child: Divider(
                          thickness: 1,
                          color: Colors.black,
                        )),
                      ],
                    ),
                    SizedBox(height: screenHeight * 0.04),
                    GestureDetector(
                      onTap: () {
                        log('Let go!! Google');
                      },
                      child:  Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Image(
                            image: AssetImage('assets/images/Google_logo.png'),
                            width: 28,
                            height: 28,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            'Log in with Google',
                            style: TextStyle(fontSize: Get.textTheme.titleMedium?.fontSize),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(10), // เพิ่มระยะห่าง
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Text(
              "Don’t have an account?",
              style: TextStyle(
                fontSize: Get.textTheme.titleMedium?.fontSize,
                color: Colors.black,
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(() => const UsertypePage());
                log('Let go!! Sign up');
              },
              child: Text(
                " Sign up",
                style: TextStyle(
                  fontSize: Get.textTheme.titleMedium?.fontSize,
                  color: const Color(0xff0701FF),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
