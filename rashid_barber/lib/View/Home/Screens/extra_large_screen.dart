import 'package:flutter/material.dart';
import 'package:rashid_barber/Utils/colors.dart';
import 'package:rashid_barber/View/Home/Widgets/company_header_widget.dart';
import 'package:rashid_barber/View/Home/Widgets/company_statistic_widget.dart';
import 'package:rashid_barber/View/Home/Widgets/gallery_widget.dart';
import 'package:rashid_barber/View/Home/Widgets/heading_widget.dart';
import 'package:rashid_barber/View/Home/Widgets/our_barber_card.dart';
import 'package:rashid_barber/View/Home/Widgets/our_services_card.dart';
import 'package:rashid_barber/View/Home/Widgets/timing_widget.dart';
class ExtraLargeScreen extends StatefulWidget {
  const ExtraLargeScreen({super.key});

  @override
  State<ExtraLargeScreen> createState() => _ExtraLargeScreenState();
}

class _ExtraLargeScreenState extends State<ExtraLargeScreen> {
  @override
  Widget build(BuildContext context) {
        final width = MediaQuery.of(context).size.width;

    return SafeArea(
          child: Center(
            child: Container(
              width: width*1<=1200?double.infinity:1200,//just to maintain the structure on bigger screen 
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
                    ServicesCard(width: width,height: 170,crossAxisCount: 6,),
                    const HeadingWidget(
                      title: 'Ours Barbers',
                      subtitle: 'View All',
                    ),
                    //barbar cards
                    OurBarberCard(width: width,crossAxisCount: 6,height: 200,),
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
          ),
        );
  }
}