import 'package:flutter/material.dart';
import 'package:ideathon/widgets/mobile/places/card_widgets.dart';

class Beaches extends StatelessWidget {
  const Beaches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 30,
        ),
            child: SingleChildScrollView(
              child: Column(
                children: const [
                  CardWidget(
                    name: 'The Place',
                    image: 'assets/images/tokeh.jpeg',
                    location: 'Tokeh',
                  ),
                  CardWidget(
                    name: '#2 River',
                    image: 'assets/images/n2.jpeg',
                    location: 'Goderich',
                  ),
                  CardWidget(
                    name: 'Saful Resort',
                    image: 'assets/images/n2.jpeg',
                    location: 'Regent',
                  )
                ],
              ),
            ),
      ),
    );
  }
}