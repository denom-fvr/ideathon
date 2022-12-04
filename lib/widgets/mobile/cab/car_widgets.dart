import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

import '../../../screens/mobile/cab/cars_details.dart';

class CarWidget extends StatelessWidget {
  final String carImage;
  final String driverImage;
  final String driverName;
  final String carLicense;
  const CarWidget({
    Key? key,
    required this.carImage,
    required this.driverName,
    required this.carLicense,
    required this.driverImage
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
              context, MaterialPageRoute(
              builder: (context) => const CarDetail()
          )
          );
        },
        child: Container(
          height: MediaQuery.of(context).size.width * 0.8,
          width: MediaQuery.of(context).size.width * 0.9,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          height: MediaQuery.of(context).size.width * 0.2,
                          width: MediaQuery.of(context).size.width * 0.2,
                          child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        color: Colors.deepPurple.shade100,
                                        width: 3
                                    ),
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            driverImage
                                        ),
                                      fit: BoxFit.cover
                                    )
                                ),
                              )
                          ),
                        ),
                        const Gap(10),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              driverName,
                              style: const TextStyle(
                                  color: Colors.black87,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            const Gap(5),
                            RatingBar.builder(
                                initialRating: 4,
                                minRating: 1,
                                direction: Axis.horizontal,
                                itemCount: 5,
                                itemSize: 19,
                                itemPadding: const EdgeInsets.symmetric(
                                    horizontal: 2
                                ),
                                itemBuilder: (
                                    context,
                                    _
                                    ) => const Icon(
                                  Icons.star,
                                  color: Colors.red,
                                ),
                                onRatingUpdate: (index){}
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                const Gap(5),
                const Divider(
                  color: Colors.black87,
                ),
                const Gap(5),
                Column(
                  children: [
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                color: Colors.deepPurple.shade100,
                                width: 3
                            ),
                            borderRadius: const BorderRadius.all(
                                Radius.circular(12)
                            ),
                            image: DecorationImage(
                                image: AssetImage(
                                    carImage
                                ),
                                fit: BoxFit.cover
                            )
                        ),
                      ),
                    ),
                    const Gap(5),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            carLicense,
                            style: const TextStyle(
                                color: Colors.black87,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),
                          ),
                          const Icon(
                            Icons.favorite_border,
                            color: Colors.red,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
