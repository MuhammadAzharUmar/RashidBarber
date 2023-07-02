
import 'package:flutter/material.dart';
import 'package:rashid_barber/Utils/colors.dart';
import 'package:rashid_barber/Utils/style.dart';

class CompanyHeaderWidget extends StatelessWidget {
  const CompanyHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      height: 110,
      child: Row(
        children: [
          Container(
            height: 110,
            width: 110,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: kCardBackground,

              // image: DecorationImage(image: AssetImage('assets/logo.png')),
            ),
            child: Center(
                child: Image.asset(
              'assets/logo.png',
              width: 84,
              height: 52,
              fit: BoxFit.contain,
            )),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Text("Haircuts Beards",
                      style: kTitleTextStyle),
                  Row(
                    children: [
                      Image.asset(
                        'assets/mapicon.png',
                        width: 16,
                        height: 16,
                        color: ksubtitleColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '1 Baker Street, London',
                        style: kSubtitleTextStyle,
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset(
                        'assets/phoneicon.png',
                        width: 16,
                        height: 16,
                        color: ksubtitleColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        '+4432274444292',
                        style: kSubtitleTextStyle,
                      )
                    ],
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
