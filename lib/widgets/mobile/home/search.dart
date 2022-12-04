import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import '../../../constants/colors.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.06,
        width: MediaQuery.of(context).size.width * 0.7,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 15
          ),
          child: TextField(
            decoration: InputDecoration(
              suffixIcon: GestureDetector(
                onTap: (){},
                child: const Icon(
                  FluentSystemIcons.ic_fluent_search_regular,
                  color: search,
                ),
              ),
              hintText: 'Search',
              hintStyle: const TextStyle(
                  color: primary
              ),
              border: InputBorder.none,
              fillColor: primary,
            ),
          ),
        ),
      ),
    );
  }
}