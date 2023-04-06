import 'package:flutter/material.dart';

class RepeatedTab extends StatelessWidget {
  final String title;
  const RepeatedTab({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Tab(child: Text(title, style: TextStyle(color: Colors.grey.shade600, fontFamily: "Acme"),));
  }
}
