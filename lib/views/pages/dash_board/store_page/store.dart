import 'package:flutter/material.dart';

class Store extends StatefulWidget {
  const Store({Key? key}) : super(key: key);

  @override
  State<Store> createState() => _StoreState();
}

class _StoreState extends State<Store> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Store",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 24),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
