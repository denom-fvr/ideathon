import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class FilterWidget extends StatelessWidget {
  const FilterWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      child: Container(
          height: 50,
          width: 50,
          decoration: const BoxDecoration(
            color: primary,
            borderRadius: BorderRadius.all(
                Radius.circular(12)
            ),
          ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset(
            'assets/pngs/edit.png',
            color: Colors.grey.shade200,
          ),
        ),
      ),
    );
  }
}
