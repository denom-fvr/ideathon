import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ideathon/widgets/mobile/home/filter_widgets.dart';
import 'package:ideathon/widgets/mobile/home/hotels_widget.dart';
import 'package:ideathon/widgets/mobile/home/tab_bar_view_Widget.dart';
import '../../../constants/colors.dart';
import '../../../widgets/mobile/home/search.dart';
import 'detail.dart';

class MobileHome extends StatefulWidget {
  const MobileHome({Key? key}) : super(key: key);

  @override
  State<MobileHome> createState() => _MobileHomeState();
}

class _MobileHomeState extends State<MobileHome> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10
      ),
      child: Scaffold(
        backgroundColor: Style.bgColor,
        appBar: AppBar(
          centerTitle: false,
          backgroundColor: Style.bgColor,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: const Icon(
                  Icons.sort_outlined,
                  color: primary,
                  size: 40,
                ),
              ),
              GestureDetector(
                  onTap: (){},
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: primary,
                          width: 3
                      ),
                      borderRadius: const BorderRadius.all(
                          Radius.circular(50)
                      ),
                      image: const DecorationImage(
                          image: NetworkImage(
                              'https://thumbs.dreamstime.com/b/default-profile-picture-avatar-photo-placeholder-vector-illustration-default-profile-picture-avatar-photo-placeholder-vector-189495158.jpg'
                          ),
                        fit: BoxFit.cover
                      ),
                    ),
                  )
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            const Gap(10),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 15
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Search(),
                  FilterWidget()
                ],
              ),
            ),
            const Gap(10),
            DefaultTabController(
                length: 3,
                child: Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          const TabBar(
                              indicatorColor: primary,
                              unselectedLabelColor: search,
                              labelColor: primary,
                              labelPadding: EdgeInsets.symmetric(
                                horizontal: 10
                              ),
                              indicatorSize: TabBarIndicatorSize.label,
                              tabs: [
                                Tab(
                                  text: 'Hotels',
                                ),
                                Tab(
                                  text: 'Motels',
                                ),
                                Tab(
                                  text: 'Apartments',
                                ),
                              ]
                          ),
                          const Gap(20),
                          const TabBarViewWidget(),
                          const Gap(20),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 15
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Popular',
                                  style: Style.headLineStyle2,
                                ),
                                InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'View all',
                                    style: Style.textStyle.copyWith(color: Style.primaryColor),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const Gap(20),
                          SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                children: [
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const DetailScreen(
                                              'assets/new/1.jpg',
                                              'Sierra',
                                              '200'
                                          ),
                                        ),
                                      );
                                    },
                                    child: const HotelWidget(
                                        name: 'Sierra',
                                        location: 'Lumley',
                                        image: 'assets/new/1.jpg',
                                        price: '\$ 100 per night'
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const DetailScreen(
                                              'assets/new/4.jpg',
                                              'Leone',
                                              '200'
                                          ),
                                        ),
                                      );
                                    },
                                    child: const HotelWidget(
                                        name: 'Leone',
                                        location: 'Lumley',
                                        image: 'assets/new/4.jpg',
                                        price: '\$ 100 per night'
                                    ),
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => const DetailScreen(
                                              'assets/new/2.jpg',
                                              '5 - 10',
                                              '200'
                                          ),
                                        ),
                                      );
                                    },
                                    child: const HotelWidget(
                                        name: '5 - 10',
                                        location: 'Lumley',
                                        image: 'assets/new/2.jpg',
                                        price: '\$ 100 per night'
                                    ),
                                  ),
                                ],
                              )
                          ),
                          const Gap(10),
                        ],
                      ),
                    )
                )
            ),
          ],
        ),
      ),
    );
  }
}