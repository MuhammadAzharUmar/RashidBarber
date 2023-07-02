
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rashid_barber/Utils/colors.dart';
import 'package:rashid_barber/Utils/style.dart';
import 'package:rashid_barber/ViewModel/business_hour_view_model.dart';

class TimingWidget extends StatelessWidget {
  const TimingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 310,
      child: Consumer<BusinessHourViewModel>(
        builder: (context, businessHourViewModel, child) {
          return ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount:
                businessHourViewModel.businessHoursList.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                    color: kCardBackground,
                    borderRadius: index == 0
                        ? const BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10),
                          )
                        : index ==
                                businessHourViewModel
                                        .businessHoursList
                                        .length -
                                    1
                            ? const BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                bottomRight:
                                    Radius.circular(10),
                              )
                            : null),
                height: 42,
                padding:
                    const EdgeInsets.symmetric(horizontal: 20),
                margin: const EdgeInsets.symmetric(vertical: 1),
                child: Row(
                  mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      businessHourViewModel
                          .businessHoursList[index].day,
                      style: kCardTitleTextStyle,
                    ),
                    businessHourViewModel
                            .businessHoursList[index].closed
                        ? Text(
                            'Closed',
                            style: kTimingTextStyle.copyWith(
                                color: kredColor,
                                fontWeight: FontWeight.w400),
                          )
                        : Text(
                            '${businessHourViewModel.businessHoursList[index].opening}- ${businessHourViewModel.businessHoursList[index].closing}',
                            style: kTimingTextStyle),
                  ],
                ),
              );
            },
          );
        },
      ),
    );
  }
}

