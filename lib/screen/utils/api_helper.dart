import 'package:http/http.dart' as http;

class ApiHelper {
  Future<String> addProductApi() async {
    String link =
        "https://apidatahub.000webhostapp.com/MyShop/API/adddataapi.php";
    Uri uri = Uri.parse(link);
    var response = await http.post(uri, body: {
      "data": "product",
      "p_name": "noise",
      "p_price": "5000",
      "p_offer": "0",
      "p_category": "watch",
      "p_rate": "5",
      "p_desc": "60feature",
    });
    if (response.statusCode == 200) {
      return "success";
    }
    return "Failed";
  }
}
