import 'package:flutter/material.dart';

class MyOrder extends StatelessWidget {
  const MyOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black)),
        title: const Text("My Order",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 24, fontFamily: "Acme"),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
    );
  }
}
