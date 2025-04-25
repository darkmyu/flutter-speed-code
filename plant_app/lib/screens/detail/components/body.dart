import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/detail/components/image_and_icons.dart';
import 'package:plant_app/screens/detail/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: [
          const ImageAndIcons(),
          const TitleAndPrice(
            title: 'Angelica',
            country: 'Russia',
            price: 440,
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kPrimaryColor,
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Buy Now',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.grey,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                      ),
                    ),
                  ),
                  onPressed: () {},
                  child: const Text(
                    'Description',
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
