import 'package:flutter/material.dart';
import 'package:post_api_ecommerce_app/screen/home_screen/provider/home_provider.dart';
import 'package:post_api_ecommerce_app/screen/home_screen/view/home_screens.dart';
import 'package:post_api_ecommerce_app/screen/insert_screen/view/insert_screen.dart';
import 'package:provider/provider.dart';



void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Home_Provider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // initialRoute: '1',
        routes: {
          '/': (context) => Home_Screen(),
          'Insert': (context) => Insert_Screen(),

        },
      ),
    ),
  );
}