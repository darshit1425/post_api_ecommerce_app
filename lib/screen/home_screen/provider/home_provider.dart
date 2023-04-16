import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:post_api_ecommerce_app/screen/utils/api_helper.dart';
import 'package:http/http.dart' as http;

class Home_Provider extends ChangeNotifier {
  ApiHelper apiHelper = ApiHelper();
  List<dynamic> EcommerceList = [];

  Future<List<dynamic>> ProductApiCall() async {
    List<dynamic> ecommercemodal = await apiHelper.GetApiCall();
    EcommerceList = ecommercemodal;
    return EcommerceList;
  }

  Future<String> productPostdata(
      p_name, p_rate, p_offer, p_desc, p_cate, p_price) async {
    ApiHelper a1 = ApiHelper();
    var data = await a1.addProductApi(
        p_name, p_rate, p_offer, p_desc, p_cate, p_price);
    notifyListeners();
    if (data == null) {
      return "failed";
    }
    return "Success";
  }
}
