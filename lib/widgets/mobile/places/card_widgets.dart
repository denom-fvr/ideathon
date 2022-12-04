import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardWidget extends StatelessWidget {
  final String name;
  final String image;
  final String location;
  const CardWidget({
    Key? key,
    required this.name,
    required this.image,
    required this.location
  }) : super(key: key);

  get nPrimaryTextColor => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5
      ),
      child: Center(
        child: Container(
          height: MediaQuery.of(context).size.height * 0.3,
          width: MediaQuery.of(context).size.height * 0.4,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: DecorationImage(
                  image: AssetImage(
                      image
                  ),
                  fit: BoxFit.cover
              )
          ),
          child: Stack(
            children: [
              Positioned(
                top: 15,
                left: 20,
                child: Text(
                    name,
                    style: TextStyle(
                        color: nPrimaryTextColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                    )
                ),
              ),
              Positioned(
                bottom: 0,
                left: 5,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.1,
                  width: MediaQuery.of(context).size.height * 0.2,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                  ),
                  child: Center(
                    child: Row(
                      children: [
                        const Icon(
                          Icons.location_on_rounded,
                          color: Colors.yellow,
                        ),
                        const Gap(10),
                        Text(
                            location,
                            style: const TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            )
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 5,
                right: 10,
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.05,
                  width: MediaQuery.of(context).size.height * 0.05,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.favorite_border,
                      color: Colors.red,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}