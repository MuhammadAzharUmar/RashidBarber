import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rashid_barber/Utils/colors.dart';
import 'package:rashid_barber/Utils/style.dart';
import 'package:rashid_barber/ViewModel/our_services_view_model.dart';

class ServicesCard extends StatelessWidget {
  const ServicesCard({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {
    return Consumer<OursServicesViewModel>(
      builder: (context, oursServicesViewModel, child) {
        return SizedBox(
          height: width * 1 <= 600 ? 280 : 350,
          child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: oursServicesViewModel.oursServicesList.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: width * 1 <= 600 ? 2.2 : 4,
                crossAxisCount: 2),
            itemBuilder: (context, index) {
              return Container(
                padding: width * 1 <= 600
                    ? const EdgeInsets.all(10)
                    : const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    color: kCardBackground,
                    borderRadius: BorderRadius.circular(8)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset(
                          oursServicesViewModel.oursServicesList[index].url,
                          width: 30,
                          height: 30,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '\$${oursServicesViewModel.oursServicesList[index].price} ',
                              style: kCardPriceTextStyle,
                            ),
                            Image.asset(
                              'assets/timer.png',
                              width: 12,
                              height: 12,
                            ),
                            Text(
                              ' ${oursServicesViewModel.oursServicesList[index].time}',
                              style: kSubtitleTextStyle,
                            )
                          ],
                        )
                      ],
                    ),
                    Text(
                      oursServicesViewModel.oursServicesList[index].title,
                      style: kCardTitleTextStyle,
                    )
                  ],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
