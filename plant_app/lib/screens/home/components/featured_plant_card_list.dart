import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class FeaturedPlantCardList extends StatelessWidget {
  const FeaturedPlantCardList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          _FeaturedPlantCard(
            image: 'assets/images/bottom_img_1.png',
            onTap: () {},
          ),
          _FeaturedPlantCard(
            image: 'assets/images/bottom_img_2.png',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class _FeaturedPlantCard extends StatelessWidget {
  final String image;
  final GestureTapCallback onTap;

  const _FeaturedPlantCard({
    required this.image,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: AssetImage(image),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
