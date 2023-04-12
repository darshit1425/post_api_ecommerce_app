import 'package:flutter/material.dart';
import 'package:post_api_ecommerce_app/screen/utils/api_helper.dart';

class Home_Provider extends ChangeNotifier {
  ApiHelper apiHelper = ApiHelper();

  Future<String> post() async {
    // Api_helper apiHelper = Api_helper();

    String msg = await apiHelper.addProductApi();
    return msg;
  }
}
