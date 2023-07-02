import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rashid_barber/Model/api_testing_model.dart';
import 'package:rashid_barber/NetworkServices/api_services_class.dart';

class ApiTestingViewModel extends ChangeNotifier {
  String url = 'https://jsonplaceholder.typicode.com/users';

  List<ApiTestingModel> _names = [];
  Future<void> getDatafromApi(BuildContext context) async {
    try {
      List<dynamic> jsonData = await ApiServices().fetchData(url);
      _names =
          jsonData.map((data) => ApiTestingModel(name: data['username'])).toList();
      notifyListeners();
    } catch (error) {
      if (kDebugMode) {
        print(error.toString());
      }
    }
  }

  List<ApiTestingModel> get names => _names;
}
