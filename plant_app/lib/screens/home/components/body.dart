import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/home/components/featured_plant_card_list.dart';
import 'package:plant_app/screens/home/components/header_with_search_box.dart';
import 'package:plant_app/screens/home/components/recommend_plant_card_list.dart';
import 'package:plant_app/screens/home/components/title_with_more_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const ClampingScrollPhysics(),
      child: Column(
        children: [
          const HeaderWithSearchBox(),
          TitleWithMoreButton(
            title: 'Recommended',
            onPressed: () {},
          ),
          const RecommendPlantCardList(),
          TitleWithMoreButton(
            title: 'Featured Plants',
            onPressed: () {},
          ),
          const FeaturedPlantCardList(),
          const SizedBox(
            height: kDefaultPadding,
          ),
        ],
      ),
    );
  }
}
