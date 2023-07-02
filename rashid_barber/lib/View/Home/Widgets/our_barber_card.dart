
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rashid_barber/Utils/colors.dart';
import 'package:rashid_barber/Utils/style.dart';
import 'package:rashid_barber/ViewModel/api_testing_view_model.dart';
import 'package:rashid_barber/ViewModel/our_barber_view_model.dart';

class OurBarberCard extends StatelessWidget {
  const OurBarberCard({
    super.key,
    required this.width,
  });

  final double width;

  @override
  Widget build(BuildContext context) {

    return Consumer<OursBarberViewModel>(
      builder: (context, oursBarberViewModel, child) {
        
      return SizedBox(
        height: 270,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          itemCount: 6,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            childAspectRatio: width * 1 <= 600 ? 1 : 2.3,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                color: kCardBackground,
                borderRadius: BorderRadius.circular(8),
              ),
              padding: width * 1 <= 600
                  ? const EdgeInsets.all(10)
                  : const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment:
                        MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        oursBarberViewModel.ourBarberList[index].url,
                        width: 40,
                        height: 40,
                        fit: BoxFit.contain,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment:
                              MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              'assets/star.png',
                              width: 14,
                              height: 14,
                              fit: BoxFit.contain,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                             Text(
                              oursBarberViewModel.ourBarberList[index].rating,
                              style: kSubtitleTextStyle,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Consumer<ApiTestingViewModel>(builder: (context, apiTestingViewModel, child) {
                    apiTestingViewModel.getDatafromApi(context);
                   return 
                   apiTestingViewModel.names.isEmpty? Container(width: 50,height: 10,color: kAppBackground,
                   child:const LinearProgressIndicator(color: kCardBackground,backgroundColor: kAppBackground),
                   ):
                   Text(
                        apiTestingViewModel.names[index].name,//getting data from api
                        textAlign: TextAlign.center,
                        style: kCardTitleTextStyle.copyWith(
                            fontWeight: FontWeight.w500,
                            fontSize: 16),
                      );
                      },
                   
                  ),
                  
                  
                   Text(
                    oursBarberViewModel.ourBarberList[index].profession,
                    style: kViewAllTextStyle,
                  ),
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