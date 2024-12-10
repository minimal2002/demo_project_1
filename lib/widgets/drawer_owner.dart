import 'package:flutter/material.dart';

class MyDrawerOwner extends StatelessWidget {
  const MyDrawerOwner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.blueGrey[50], // เปลี่ยนสีพื้นหลังที่นี่
        child: Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 10),
          child: Column(
            children: [
              Image.asset('assets/images/Logo.png', height: 250),
              const Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text('Main Menu'),
              ),
              const Divider(
                indent: 20,
                endIndent: 20,
              ),
              ListTile(
                title: const Text('Log Out'),
                leading: const Icon(Icons.logout),
                onTap: () {
                  // ออกไปหน้าแรกสุด
                  Navigator.popUntil(
                    context,
                    (route) => route.isFirst,
                  );
                },
              ),
              Expanded(child: Container()),
              const Center(
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Column(
                    children: [
                      Text(
                        'Copyright for Project Cs',
                        style: TextStyle(fontSize: 12),
                      ),
                      Text('65011212119 & 65011212173'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}