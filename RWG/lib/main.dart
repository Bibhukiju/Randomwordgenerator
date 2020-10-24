import 'package:get/get.dart';
import 'package:flutter/material.dart';
import './views/time_select.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          primaryColor: Colors.white,
          appBarTheme: AppBarTheme(elevation: 0, color: Colors.white)),
      debugShowCheckedModeBanner: false,
      home: TimeSelectionPage(),
    );
  }
}
