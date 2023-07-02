import 'package:flutter/material.dart';
import 'package:rashid_barber/Model/business_hour_model.dart';
class BusinessHourViewModel extends ChangeNotifier {
  final List<BusinessHours> _businessHoursList = [
    BusinessHours(day: 'MON', opening: '9am', closing: '10pm', closed: false),
    BusinessHours(day: 'TUE', opening: '', closing: '', closed: true),
    BusinessHours(day: 'WED', opening: '9am', closing: '10pm', closed: false),
    BusinessHours(day: 'THU', opening: '9am', closing: '10pm', closed: false),
    BusinessHours(day: 'FRI', opening: '9am', closing: '10pm', closed: false),
    BusinessHours(day: 'SAT', opening: '9am', closing: '10pm', closed: false),
    BusinessHours(day: 'SUN', opening: '9am', closing: '10pm', closed: false),
  ];

  
  List<BusinessHours> get businessHoursList => _businessHoursList;
}