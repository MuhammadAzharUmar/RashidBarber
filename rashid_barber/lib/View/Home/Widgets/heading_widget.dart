
import 'package:flutter/material.dart';
import 'package:rashid_barber/Utils/style.dart';

class HeadingWidget extends StatelessWidget {
  const HeadingWidget({
    super.key,
    required this.title,
    required this.subtitle,
  });
final String title;
final String subtitle;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 58,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: kHeadingTextStyle,
          ),
          Text(
            subtitle,
            style: kViewAllTextStyle,
          )
        ],
      ),
    );
  }
}
