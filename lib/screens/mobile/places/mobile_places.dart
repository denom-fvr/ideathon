import 'package:flutter/material.dart';
import 'package:ideathon/screens/mobile/places/beaches.dart';
import '../../../constants/colors.dart';
import '../../../widgets/mobile/places/pick_widget.dart';

class MobilePlaces extends StatefulWidget {
  const MobilePlaces({Key? key}) : super(key: key);

  @override
  State<MobilePlaces> createState() => _MobilePlacesState();
}

class _MobilePlacesState extends State<MobilePlaces> with TickerProviderStateMixin{
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
          toolbarHeight: 60,
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
                          name: 'Beaches',
                          icon: Icons.beach_access,
                        ),
                        PickWidget(
                          name: 'Museum',
                          icon: Icons.house,
                        ),
                        PickWidget(
                          name: 'Plato',
                          icon: Icons.face,
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
              Beaches(),
              Beaches(),
              Beaches(),
            ]
      ),
          ),
        ),
      ),
    );
  }
}
