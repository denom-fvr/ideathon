import 'package:flutter/material.dart';

class PickWidget extends StatelessWidget {
  final String name;
  final bool check;
  final IconData icon;
  const PickWidget({
    Key? key,
    required this.name,
    this.check = false,
    required this.icon
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          icon
        ),
        Text(
          name,
          style: const TextStyle(
            fontSize: 11,
          ),
        ),
      ],
    );
  }
}