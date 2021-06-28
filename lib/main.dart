import 'package:flutter/material.dart';
import 'package:foods/ui/pages/main_page.dart';
import 'package:foods/ui/pages/menu_detail_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}
