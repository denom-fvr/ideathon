import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../../constants/colors.dart';

class HotelWidget extends StatelessWidget {
  final String name;
  final String price;
  final String location;
  final String image;
  const HotelWidget({
    Key? key,
    required this.name,
    required this.location,
    required this.image,
    required this.price
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 5
      ),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
        width: MediaQuery.of(context).size.width * 0.6,
        decoration: BoxDecoration(
            color: Style.primaryColor,
            borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(
                            image
                        )
                    )
                ),
              ),
              const Gap(20),
              Text(
                name,
                style: const TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                ),
              ),
              const Gap(10),
              Row(
                children: [
                  Text(
                    location,
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16
                    ),
                  ),
                  const Icon(
                    Icons.location_on,
                    color: Colors.yellowAccent,
                  ),
                ],
              ),
              const Gap(10),
              Text(
                price,
                style: const TextStyle(
                  color: search,
                  fontWeight: FontWeight.bold,
                  fontSize: 16
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}