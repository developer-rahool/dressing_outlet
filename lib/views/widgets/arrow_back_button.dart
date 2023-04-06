import 'package:flutter/material.dart';

Widget appBarBackButton (BuildContext context){
  return IconButton(
      onPressed: (){
        Navigator.pop(context);
      },
      icon: const Icon(
          Icons.arrow_back_ios_new,
          color: Colors.black),
  );
}