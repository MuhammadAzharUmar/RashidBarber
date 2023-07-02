import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:rashid_barber/View/Home/Screens/home.dart';
import 'package:rashid_barber/ViewModel/api_testing_view_model.dart';
import 'package:rashid_barber/ViewModel/business_hour_view_model.dart';
import 'package:rashid_barber/ViewModel/our_barber_view_model.dart';
import 'package:rashid_barber/ViewModel/our_services_view_model.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<BusinessHourViewModel>(create: (context) => BusinessHourViewModel(),),
        ChangeNotifierProvider<OursServicesViewModel>(create: (context) => OursServicesViewModel(),),
        ChangeNotifierProvider<OursBarberViewModel>(create: (context) => OursBarberViewModel(),),
        ChangeNotifierProvider<ApiTestingViewModel>(create: (context) => ApiTestingViewModel(),),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
      ),
    );
  }
}