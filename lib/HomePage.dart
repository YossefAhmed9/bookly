import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xff100B20),
      body: SafeArea(
        child: Column(
          children: [
            Text(
              'This is a test widget',
              style: TextStyle(fontSize: 20, color: Colors.white,),
            )
          ],
        ),
      ),
    );
  }
}
