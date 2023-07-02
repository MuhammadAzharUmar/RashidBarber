import 'package:flutter/foundation.dart';
import 'package:rashid_barber/Model/ours_barber_model.dart';

class OursBarberViewModel extends ChangeNotifier {
  final List<OursBarber> _ourBarberList = [
    OursBarber(
      url: 'assets/profile.png',
      rating: '4.0',
      name: 'Henry Lucas',
      profession: 'Cutting Master',
    ),
    OursBarber(
      url: 'assets/profile.png',
      rating: '4.0',
      name: 'Henry Lucas',
      profession: 'Cutting Master',
    ),
    OursBarber(
      url: 'assets/profile.png',
      rating: '4.0',
      name: 'Henry Lucas',
      profession: 'Cutting Master',
    ),
    OursBarber(
      url: 'assets/profile.png',
      rating: '4.0',
      name: 'Henry Lucas',
      profession: 'Cutting Master',
    ),
    OursBarber(
      url: 'assets/profile.png',
      rating: '4.0',
      name: 'Henry Lucas',
      profession: 'Cutting Master',
    ),
    OursBarber(
      url: 'assets/profile.png',
      rating: '4.0',
      name: 'Henry Lucas',
      profession: 'Cutting Master',
    ),
  
  ];

  List<OursBarber> get ourBarberList => _ourBarberList;
}