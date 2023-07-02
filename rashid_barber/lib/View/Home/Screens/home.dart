import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rashid_barber/Utils/colors.dart';
import 'package:rashid_barber/Utils/style.dart';
import 'package:rashid_barber/View/Home/Widgets/company_header_widget.dart';
import 'package:rashid_barber/View/Home/Widgets/company_statistic_widget.dart';
import 'package:rashid_barber/View/Home/Widgets/gallery_widget.dart';
import 'package:rashid_barber/View/Home/Widgets/heading_widget.dart';
import 'package:rashid_barber/View/Home/Widgets/our_barber_card.dart';
import 'package:rashid_barber/View/Home/Widgets/our_services_card.dart';
import 'package:rashid_barber/View/Home/Widgets/timing_widget.dart';
import 'package:rashid_barber/ViewModel/api_testing_view_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
fetchDatafromApi();
  }
  Future<void> fetchDatafromApi()async{
    
     final apiTestingViewModel1 = Provider.of<ApiTestingViewModel>(context, listen: false);
          await apiTestingViewModel1.getDatafromApi(context);
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return RefreshIndicator(
      displacement: 100,
      backgroundColor: kCardBackground,
      color: kHeadingColor,
      onRefresh: ()async {
      await Future.delayed(const Duration(seconds: 2)).then((value) {

      setState(() {
        fetchDatafromApi();
      });

      });
    },
      child: Scaffold(
        backgroundColor: kAppBackground,
        appBar: AppBar(
          backgroundColor: kAppBackground,
          elevation: 0,
          leading: Center(
              child: Image.asset(
            'assets/profile.png',
            width: 42,
            height: 42,
            fit: BoxFit.cover,
          )),
          title: Text(
            'Isfat Sharik',
            style: kTitleTextStyle.copyWith(fontSize: 16),
          ),
          actions: const [
            Icon(
              Icons.notification_important_outlined,
              size: 24,
              color: kTitleColor,
            ),
            SizedBox(
              width: 20,
            ),
          ],
        ),
        body: LayoutBuilder(
          builder: (context, constraints) {
            return SafeArea(
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CompanyHeaderWidget(),
                      const SizedBox(
                        height: 20,
                      ),
                      const Divider(
                        color: ksubtitleColor,
                      ),
                      const CompanyStatisticsWidget(),
                      const Divider(
                        color: ksubtitleColor,
                      ),
                      const HeadingWidget(
                          title: 'Ours Services', subtitle: 'View All'),
                      ServicesCard(width: width),
                      const HeadingWidget(
                        title: 'Ours Barbers',
                        subtitle: 'View All',
                      ),
                      //barbar cards
                      OurBarberCard(width: width),
                      const HeadingWidget(title: 'Timing', subtitle: ''),
                      const SizedBox(
                        height: 25,
                      ),
                      const TimingWidget(),
                      const SizedBox(
                        height: 25,
                      ),
                      const HeadingWidget(title: 'Gallery', subtitle: ''),
    
                      const GalleryWidget(),
                      const SizedBox(
                        height: 25,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
