import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/detail/detail_screen.dart';

class RecommendPlantCardList extends StatelessWidget {
  const RecommendPlantCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _RecommendPlantCard(
            image: 'assets/images/image_1.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const DetailScreen(),
                ),
              );
            },
          ),
          _RecommendPlantCard(
            image: 'assets/images/image_2.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const DetailScreen(),
                ),
              );
            },
          ),
          _RecommendPlantCard(
            image: 'assets/images/image_3.png',
            title: 'Samantha',
            country: 'Russia',
            price: 440,
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => const DetailScreen(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}

class _RecommendPlantCard extends StatelessWidget {
  final String image;
  final String title;
  final String country;
  final int price;
  final GestureTapCallback onTap;

  const _RecommendPlantCard({
    required this.image,
    required this.title,
    required this.country,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      margin: const EdgeInsets.only(
        left: kDefaultPadding,
        top: kDefaultPadding / 2,
        bottom: kDefaultPadding * 2.5,
      ),
      width: size.width * 0.4,
      child: Column(
        children: [
          Image.asset(image),
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding / 2),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 50,
                    color: kPrimaryColor.withOpacity(0.23),
                  )
                ],
              ),
              child: Row(
                children: [
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '$title\n'.toUpperCase(),
                          style: Theme.of(context).textTheme.labelLarge,
                        ),
                        TextSpan(
                          text: country.toUpperCase(),
                          style: TextStyle(
                            color: kPrimaryColor.withOpacity(0.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text(
                    '\$$price',
                    style: Theme.of(context).textTheme.labelLarge?.copyWith(
                          color: kPrimaryColor,
                        ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
