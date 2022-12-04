import 'package:flutter/material.dart';
import 'package:ideathon/constants/colors.dart';
import 'package:ideathon/screens/mobile/cab/mobile_cars.dart';
import '../../../widgets/mobile/places/pick_widget.dart';

class MobileCab extends StatefulWidget {
  const MobileCab({Key? key}) : super(key: key);

  @override
  State<MobileCab> createState() => _MobileCabState();
}

class _MobileCabState extends State<MobileCab> with TickerProviderStateMixin{
  @override

  Widget build(BuildContext context) {
    TabController controller = TabController(
        length: 3,
        vsync: this
    );
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Style.bgColor,
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Style.bgColor,
          elevation: 0,
          toolbarHeight: 70,
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
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(
                          Radius.circular(50)
                      ),
                      image: DecorationImage(
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
          bottom: Tab(
            child: Material(
              elevation: 3,
              borderRadius: BorderRadius.circular(50),
              child: Container(
                height: MediaQuery.of(context).size.height * 0.07,
                width: MediaQuery.of(context).size.width * 0.9,
                decoration: BoxDecoration(
                    color: Colors.yellow.shade50,
                    borderRadius: BorderRadius.circular(50)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Align(
                    alignment: Alignment.center,
                    child: TabBar(
                      controller: controller,
                      isScrollable: false,
                      indicator: BoxDecoration(
                          color: primary,
                          borderRadius: BorderRadius.circular(12)
                      ),
                      labelStyle: const TextStyle(
                          color: Colors.white70
                      ),
                      unselectedLabelColor: search,
                      tabs: const [
                        PickWidget(
                          name: 'Cars',
                          icon: Icons.drive_eta,
                        ),
                        PickWidget(
                          name: 'Bikes',
                          icon: Icons.electric_bike_rounded,
                        ),
                        PickWidget(
                          name: 'Water Taxis',
                          icon: Icons.directions_ferry,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(15)
            ),
            child: TabBarView(
                controller: controller,
                children: const [
                  MobileCars(),
                  MobileCars(),
                  MobileCars(),
                ]
            ),
          ),
        ),
      ),
    );
  }
}
