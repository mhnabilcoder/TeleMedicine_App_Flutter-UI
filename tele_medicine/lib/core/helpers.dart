import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';

class Helpers{
 static Future<bool> initConnectivity() async {
    final ConnectivityResult result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.wifi) {
      return true;
    } else if (result == ConnectivityResult.mobile) {
      return true;
    } else {
      return false;
    }
  }

}