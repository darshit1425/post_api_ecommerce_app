import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:post_api_ecommerce_app/screen/home_screen/modal/home_modal.dart';

class ApiHelper {
  Future<String> addProductApi(
    String s1,
    String s2,
    String s3,
    String s4,
    String s5,
    String s6,
  ) async {
    String link =
        "https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php";
    Uri uri = Uri.parse(link);
    var response = await http.post(uri, body: {
      "p_name": s1,
      "p_rate": s2,
      "p_price": s3,
      "p_offer": s4,
      "p_category": s5,
      "p_desc": s6,
    });
    if (response.statusCode == 200) {
      return "success";
    }
    return "Failed";
  }

  Future<List<dynamic>> GetApiCall() async {
    // print("$json");
    // print("==============================================");

    String getLink =
        "https://apidatahub.000webhostapp.com/MyShop/API/products.php";

    Uri uri = Uri.parse(getLink);

    var response = await http.get(uri);

    var json = jsonDecode(response.body);

    List<dynamic> ecommercemodal =
        json.map((e) => EcommerceModal().EcommerceModalFromJson(e)).toList();

    return ecommercemodal;
  }
}
