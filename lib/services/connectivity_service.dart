import 'package:connectivity/connectivity.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ConnectivityService {
  static Future<bool> isConnected() async {
    bool isConnected = false;

    try {
      var connectivityResult = await Connectivity().checkConnectivity();
      if (connectivityResult == ConnectivityResult.mobile) {
        // I am connected to a mobile network.
        isConnected = true;
      } else if (connectivityResult == ConnectivityResult.wifi) {
        // I am connected to a wifi network.
        isConnected = true;
      }
      return isConnected;
    } catch (e) {
      print("ConnectivityService - error : " + e.toString());
      return isConnected;
    }
  }

  static void showMessage(){
    Fluttertoast.showToast(
        msg: 'Please check your internet connection',
        toastLength: Toast.LENGTH_SHORT);
  }


}
