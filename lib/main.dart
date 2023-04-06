import 'package:dressing_outlet/views/pages/dash_board/customer_dashboard.dart';
import 'package:dressing_outlet/views/pages/dash_board/seller_dashboard.dart';
import 'package:dressing_outlet/views/pages/welcome_screen/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SellerDashBoard(),
      debugShowCheckedModeBanner: false,
    );
  }
}
