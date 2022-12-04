import 'package:flutter/material.dart';

class MobileProfile extends StatelessWidget {
  const MobileProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'Mobile Profile',
          style: TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.bold,
              fontSize: 32
          ),
        ),
      ),
    );
  }
}
