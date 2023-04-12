import 'package:flutter/material.dart';
import 'package:post_api_ecommerce_app/screen/home_screen/provider/home_provider.dart';
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
  Widget build(BuildContext context) {
    ProviderT = Provider.of<Home_Provider>(context, listen: true);
    ProviderF = Provider.of<Home_Provider>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          child: Container(
            decoration: BoxDecoration(
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
              leading: Icon(Icons.search),
              actions: [Icon(Icons.store)],
              title: Text(
                "E-commerce",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight),
        ),
        body: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // ScaffoldMessenger.of(context).showSnackBar(
                //   SnackBar(content: Text("$msg")),
                // );
              },
              child: Text("submit"),
            ),
          ],
        ),
      ),
    );
  }
}
