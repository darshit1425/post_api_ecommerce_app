import 'package:flutter/material.dart';
import 'package:post_api_ecommerce_app/screen/home_screen/provider/home_provider.dart';
import 'package:provider/provider.dart';

class Insert_Screen extends StatefulWidget {
  const Insert_Screen({Key? key}) : super(key: key);

  @override
  State<Insert_Screen> createState() => _Insert_ScreenState();
}

class _Insert_ScreenState extends State<Insert_Screen> {
  Home_Provider? ProviderT;
  Home_Provider? ProviderF;

  TextEditingController txtname = TextEditingController();
  TextEditingController txtprice = TextEditingController();
  TextEditingController txtoffer = TextEditingController();
  TextEditingController txtcate = TextEditingController();
  TextEditingController txtdesc = TextEditingController();
  TextEditingController txtrate = TextEditingController();

  @override
  Widget build(BuildContext context) {
    ProviderT = Provider.of<Home_Provider>(context, listen: true);
    ProviderF = Provider.of<Home_Provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.black,
          title: Text(
            "add products",
            style: TextStyle(),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtname,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    label: Text(
                      "p_name",
                      style: TextStyle(
                        color: Colors.lightBlue,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: txtprice,
                  decoration: InputDecoration(
                    label: Text(
                      "p_price",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtoffer,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    label: Text(
                      "p_offer",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: txtcate,
                  decoration: InputDecoration(
                    label: Text(
                      "p_cate",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  controller: txtdesc,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    label: Text(
                      "p_desc",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 15),
                TextField(
                  controller: txtrate,
                  decoration: InputDecoration(
                    label: Text(
                      "p_rate",
                      style: TextStyle(color: Colors.lightBlue),
                    ),
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 2,
                        color: Colors.grey.shade800,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                InkWell(
                  onTap: () {
                    ProviderF!.productPostdata(
                      txtname.text,
                      txtrate.text,
                      txtoffer.text,
                      txtdesc.text,
                      txtcate.text,
                      txtprice.text,
                    );
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 60,
                    width: 150,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 22),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
