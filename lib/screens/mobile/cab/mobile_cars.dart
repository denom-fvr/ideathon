import 'package:flutter/material.dart';
import 'package:ideathon/widgets/mobile/cab/car_widgets.dart';

import 'cars_details.dart';

class MobileCars extends StatelessWidget {
  const MobileCars({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) => const CarDetail()
                      )
                      );
                    },
                    child: const CarWidget(
                      driverName: 'Richard Johnson',
                      driverImage: 'assets/images/dr.jpg',
                      carImage: 'assets/images/ub.jpg',
                      carLicense: 'Ade 991',
                    ),
                  ),
                  const CarWidget(
                    driverName: 'Richard Johnson',
                    driverImage: 'assets/images/dr.jpg',
                    carImage: 'assets/images/ub.jpg',
                    carLicense: 'Ade 991',
                  ),
                  const CarWidget(
                    driverName: 'Richard Johnson',
                    driverImage: 'assets/images/dr.jpg',
                    carImage: 'assets/images/ub.jpg',
                    carLicense: 'Ade 991',
                  ),
                  const CarWidget(
                    driverName: 'Richard Johnson',
                    driverImage: 'assets/images/dr.jpg',
                    carImage: 'assets/images/ub.jpg',
                    carLicense: 'Ade 991',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
