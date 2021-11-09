import 'package:flutter/material.dart';
import 'package:hospital_doctor/constant.dart';
import 'package:hospital_doctor/page/home_page.dart';
import 'package:hospital_doctor/routes.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Constant.primaryColor
      ),
      home: HomePage(),
      initialRoute: Routes.HOME,
      routes: routes,
    );
  }
}
