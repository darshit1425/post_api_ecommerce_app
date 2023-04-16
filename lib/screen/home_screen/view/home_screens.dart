import 'package:flutter/material.dart';
import 'package:post_api_ecommerce_app/screen/home_screen/modal/home_modal.dart';
import 'package:post_api_ecommerce_app/screen/home_screen/provider/home_provider.dart';
import 'package:post_api_ecommerce_app/screen/utils/api_helper.dart';
import 'package:provider/provider.dart';

class Home_Screen extends StatefulWidget {
  const Home_Screen({Key? key}) : super(key: key);

  @override
  State<Home_Screen> createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  Home_Provider? ProviderT;
  Home_Provider? ProviderF;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<Home_Provider>(context, listen: false).ProductApiCall();
  }

  @override
  Widget build(BuildContext context) {
    ProviderT = Provider.of<Home_Provider>(context, listen: true);
    ProviderF = Provider.of<Home_Provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            decoration: const BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0, 2.0),
                  blurRadius: 4.0,
                ),
              ],
            ),
            child: AppBar(
              elevation: 0.0,
              backgroundColor: Colors.black,
              centerTitle: true,
              leading: Icon(Icons.insert_chart_outlined),
              actions: [
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'Insert');
                  },
                  icon: Icon(Icons.add),
                ),
              ],
              title: Text(
                "E-commerce",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
        body: Column(
          children: [
            FutureBuilder(
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return Text("${snapshot.error}");
                } else if (snapshot.hasData) {
                  List<dynamic>? EcommerceModal = snapshot.data;
                  return Expanded(
                    child: ListView.builder(
                      itemCount: EcommerceModal!.length,
                      itemBuilder: (context, index) {
                        return Container(
                          child: ListTile(
                            leading: Container(
                              child: Image.asset("assets/images/oneplus.png"),
                            ),
                           subtitle : Text(
                                "${ProviderF!.EcommerceList[index].p_price}",style: TextStyle(color: Colors.white),),
                            title: Text(
                                "${ProviderF!.EcommerceList[index].p_name}",style: TextStyle(color: Colors.white),),
                            trailing: Text(
                                "⭐${ProviderF!.EcommerceList[index].p_rate}",style: TextStyle(color: Colors.white),),
                          ),
                        );
                      },
                    ),
                  );
                }
                return Container(
                  child: CircularProgressIndicator(color: Colors.black),
                );
              },
              future: ProviderF!.ProductApiCall(),
            ),
          ],
        ),
      ),
    );
  }
}
