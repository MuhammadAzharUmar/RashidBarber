import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rashid_barber/Utils/colors.dart';
import 'package:rashid_barber/Utils/style.dart';
import 'package:rashid_barber/View/Home/Screens/extra_large_screen.dart';
import 'package:rashid_barber/View/Home/Screens/extra_small_screen.dart';
import 'package:rashid_barber/View/Home/Screens/large_screen.dart';
import 'package:rashid_barber/View/Home/Screens/medium_screen.dart';
import 'package:rashid_barber/View/Home/Screens/small_screen.dart';
import 'package:rashid_barber/View/ResponsiveLayoutBuilder/responsive_layout.dart';
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

  Future<void> fetchDatafromApi() async {
    final apiTestingViewModel1 =
        Provider.of<ApiTestingViewModel>(context, listen: false);
    await apiTestingViewModel1.getDatafromApi(context);
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      displacement: 100,
      backgroundColor: kCardBackground,
      color: kHeadingColor,
      onRefresh: () async {
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
        body: const ResponsiveLayoutBUilder(
          extraSmallScreen: ExtraSmallScreen(),
          smallScreen: SmallScreen(),
          mediumScreen: MediumScreen(),
          largeScreen: LargeScreen(),
          extraLargeScreen: ExtraLargeScreen(),
        ),
      ),
    );
  }
}
