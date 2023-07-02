
import 'package:flutter/material.dart';
import 'package:rashid_barber/Utils/colors.dart';
import 'package:rashid_barber/Utils/style.dart';

class CompanyStatisticsWidget extends StatelessWidget {
  const CompanyStatisticsWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 58,
      child: Row(
        children: [
          Expanded(
            child: Column(
              children: [
                Text(
                  '20',
                  style: kTitleTextStyle,
                ),
                Text(
                  'Team Members',
                  style: kSubtitleTextStyle,
                )
              ],
            ),
          ),
          Text(
            '|',
            style: TextStyle(
                color: ksubtitleColor,
                fontSize: 50,
                fontWeight: FontWeight.w100),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  '500',
                  style: kTitleTextStyle,
                ),
                Text(
                  'Happy Clients',
                  style: kSubtitleTextStyle,
                )
              ],
            ),
          ),
          Text(
            '|',
            style: TextStyle(
                color: ksubtitleColor,
                fontSize: 50,
                fontWeight: FontWeight.w100),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  '5+',
                  style: kTitleTextStyle,
                ),
                Text(
                  'Years Experience',
                  style: kSubtitleTextStyle,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
