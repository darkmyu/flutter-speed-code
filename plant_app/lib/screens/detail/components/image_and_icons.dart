import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:plant_app/constants.dart';
import 'package:plant_app/screens/detail/components/icon_card.dart';

class ImageAndIcons extends StatelessWidget {
  const ImageAndIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
        height: size.height * 0.8,
        child: Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: IconButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        icon: SvgPicture.asset('assets/icons/back_arrow.svg'),
                        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                      ),
                    ),
                    const Spacer(),
                    const IconCard(
                      icon: 'assets/icons/sun.svg',
                    ),
                    const IconCard(
                      icon: 'assets/icons/icon_2.svg',
                    ),
                    const IconCard(
                      icon: 'assets/icons/icon_3.svg',
                    ),
                    const IconCard(
                      icon: 'assets/icons/icon_4.svg',
                    ),
                  ],
                ),
              ),
            ),
            Container(
              width: size.width * 0.75,
              height: size.height * 0.8,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(63),
                  bottomLeft: Radius.circular(63),
                ),
                boxShadow: [
                  BoxShadow(
                    offset: const Offset(0, 10),
                    blurRadius: 60,
                    color: kPrimaryColor.withOpacity(0.29),
                  ),
                ],
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  alignment: Alignment.centerLeft,
                  image: AssetImage('assets/images/img.png'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
