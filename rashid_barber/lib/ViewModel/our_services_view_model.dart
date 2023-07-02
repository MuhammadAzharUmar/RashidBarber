import 'package:flutter/foundation.dart';
import 'package:rashid_barber/Model/ours_services_model.dart';

class OursServicesViewModel extends ChangeNotifier {
  final List<OursServices> _oursServicesList = [
    OursServices(
      url: 'assets/wash_and_cut.png',
      price: "10",
      time: "30 m",
      title: 'Wash And Cut',
    ),
    OursServices(
      url: 'assets/shave.png',
      price: "10",
      time: "30 m",
      title: 'Shave',
    ),
    OursServices(
      url: 'assets/cut.png',
      price: "10",
      time: "30 m",
      title: 'Cut',
    ),
    OursServices(
      url: 'assets/headmassage.png',
      price: "10",
      time: "30 m",
      title: 'Head Massage',
    ),
    OursServices(
      url: 'assets/scissor_cut.png',
      price: "10",
      time: "30 m",
      title: 'Scissor Cut',
    ),
    OursServices(
      url: 'assets/wet_shave.png',
      price: "10",
      time: "30 m",
      title: 'Wet Shave',
    ),

  ];

  List<OursServices> get oursServicesList => _oursServicesList;
}