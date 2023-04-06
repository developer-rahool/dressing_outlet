import 'package:flutter/material.dart';

class SubCategoryProduct extends StatelessWidget {
  final String subTitleName;
  final String subBodyName;
  const SubCategoryProduct({Key? key,
    required this.subTitleName,
    required this.subBodyName
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(subTitleName,
          style: const  TextStyle(color: Colors.black, fontWeight: FontWeight.bold,fontSize: 24, fontFamily: "Acme"),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
          icon:const  Icon(Icons.arrow_back_ios_new, color: Colors.black),
        ),
      ),
      body: Center(
        child: Text(
          subBodyName,
        ),),

    );
  }
}
