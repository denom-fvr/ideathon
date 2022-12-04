import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ideathon/screens/mobile/Market/restaurant/restaurant.dart';
import 'package:ideathon/widgets/mobile/market/horizontal.dart';
import '../../../constants/colors.dart';
import '../../../widgets/mobile/recommended/recommeded_market_widget.dart';

class Market extends StatefulWidget {
  const Market({Key? key}) : super(key: key);

  @override
  State<Market> createState() => _MarketState();
}

class _MarketState extends State<Market> {
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
          backgroundColor: Style.bgColor,
          automaticallyImplyLeading: false,
          elevation: 0,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: (){},
                child: Image.asset(
                  'assets/pngs/menu.png',
                  color: primary,
                  height: 45,
                  width: 45,
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
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 15
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Gap(10),
                Material(
                  elevation: 3,
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.2,
                    width: MediaQuery.of(context).size.width * 0.8,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                          colors: [
                            Color(0xfff7cf7d),
                            Color(0xfffdedcc),
                          ]
                      ),
                    ),
                    child: Stack(
                      children: [
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: Image.asset(
                            'assets/images/de.png',
                            height: 120,
                            width: 200,
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                  'The Fastest In',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 24,
                                      fontWeight: FontWeight.bold
                                  )
                              ),
                              Row(
                                children: const [
                                  Text(
                                      'Delivery',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold
                                      )
                                  ),
                                  Gap(10),
                                  Text(
                                      'Food',
                                      style: TextStyle(
                                          color: Color(0xfffb4b4d),
                                          fontSize: 24,
                                          fontWeight: FontWeight.bold
                                      )
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 90,
                            left: 20,
                            child: Container(
                              height: MediaQuery.of(context).size.height * 0.04,
                              width: MediaQuery.of(context).size.width * 0.3,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15),
                                color: const Color(0xfffb4b4d)
                              ),
                              child: const Padding(
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 10,
                                    vertical: 10
                                  ),
                                child: Center(
                                  child: Text(
                                      'Order Now',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold
                                      )
                                  ),
                                ),
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10
                  ),
                  child: Row(
                    children: const [
                      Text(
                          'Categories',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          )
                      ),
                    ],
                  ),
                ),
                const Gap(20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                    child: Row(
                      children: const [
                        Horizontal(
                          //image: 'assets/pngs/veg.png',
                          name: 'Vegetables',
                        ),
                        Horizontal(
                          //image: 'assets/pngs/fr.png',
                          name: 'Fruits',
                        ),
                        Horizontal(
                          //image: 'assets/pngs/fr.png',
                          name: 'Grains',
                        ),
                        Horizontal(
                          //image: 'assets/pngs/fr.png',
                          name: 'Protein Foods',
                        ),
                        Horizontal(
                          //image: 'assets/pngs/fr.png',
                          name: 'Dairy',
                        ),
                        Horizontal(
                          //image: 'assets/pngs/fr.png',
                          name: 'Oils & Fats',
                        ),
                        Horizontal(
                          //image: 'assets/pngs/fr.png',
                          name: 'Beverages',
                        ),
                      ],
                    ),
                  ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                          'Restaurants',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          )
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
                    children: const [
                      Restaurant(),
                    ],
                  ),
                ),
                const Gap(20),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                          'Recommended',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          )
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
                const RecommendedMarketWidget(),
              ],
            ),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){},
          child: Container(
            height: MediaQuery.of(context).size.height * 0.5,
            width: MediaQuery.of(context).size.width * 0.5,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: Colors.white
            ),
            child: const Center(
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.red,
              ),
            ),
          ),
        ),
      )
    );
  }
}
