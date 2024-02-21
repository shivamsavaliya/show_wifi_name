import 'package:flutter/material.dart';
import 'package:show_wifi_name/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'WiFi Info',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}
