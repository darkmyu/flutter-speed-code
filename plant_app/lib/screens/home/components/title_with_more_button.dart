import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';

class TitleWithMoreButton extends StatelessWidget {
  final String title;
  final VoidCallback onPressed;

  const TitleWithMoreButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          _TitleWithCustomUnderline(text: title),
          const Spacer(),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: kPrimaryColor,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            onPressed: onPressed,
            child: const Text('More'),
          ),
        ],
      ),
    );
  }
}

class _TitleWithCustomUnderline extends StatelessWidget {
  final String text;

  const _TitleWithCustomUnderline({
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Padding(
              padding: const EdgeInsets.only(right: kDefaultPadding / 4),
              child: Container(
                height: 7,
                color: kPrimaryColor.withOpacity(0.2),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
