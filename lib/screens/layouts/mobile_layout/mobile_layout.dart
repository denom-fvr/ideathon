import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:ideathon/screens/mobile/places/mobile_places.dart';
import '../../../constants/colors.dart';
import '../../mobile/Market/mobile_market.dart';
import '../../mobile/cab/mobile_cab.dart';
import '../../mobile/home/mobile_home.dart';

class MobileLayout extends StatefulWidget {
  const MobileLayout({Key? key}) : super(key: key);

  @override
  State<MobileLayout> createState() => _MobileLayoutState();
}

class _MobileLayoutState extends State<MobileLayout> {
  int _currentIndex = 0;
  late PageController _controller;


  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: PageView(
          controller: _controller,
          onPageChanged: (index) {
            setState(() => _currentIndex = index);
          },
          children: const [
            MobileHome(),
            MobileCab(),
            MobilePlaces(),
            Market(),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10),
        child: GNav(
            selectedIndex: _currentIndex,
            onTabChange: (index) {
              setState(() => _currentIndex = index);
              _controller.jumpToPage(index);
            },
            haptic: true,
            tabBorderRadius: 50,
            tabActiveBorder: Border.all(
                color: primary,
                width: 3
            ),
            curve: Curves.easeOutExpo,
            gap: 8,
            color: primary,
            activeColor: Colors.white,
            tabBackgroundColor: primary,
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            tabs: [
              GButton(
                icon:
                _currentIndex == 0 ? FluentSystemIcons.ic_fluent_home_filled : FluentSystemIcons.ic_fluent_home_regular,
                text: 'Home',
              ),
              GButton(
                icon: _currentIndex == 1 ? Icons.car_rental_rounded : Icons.car_rental_outlined,
                text: 'Cab',
              ),
              GButton(
                icon: _currentIndex == 2 ? Icons.place : Icons.place_outlined,
                text: 'Places',
              ),
              GButton(
                icon: _currentIndex == 3 ? Icons.local_mall : Icons.local_mall_outlined,
                text: 'Market',
              ),
            ]

        ),
      ),
    );
  }
}
