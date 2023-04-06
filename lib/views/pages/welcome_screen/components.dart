import 'package:flutter/material.dart';

InputDecoration inputDecorate(label) {
  return InputDecoration(
    hintText: label,
    fillColor: const Color(0xFFEEEEEE),
    filled: true,
    border: InputBorder.none,
  );
}

Column viaUsingButton(assetImage, label) {
  return Column(
    children: [
      Image(
        image: assetImage,
        height: 35,
      ),
      const SizedBox(
        width: 5,
      ),
      Text(
        label,
        style: const TextStyle(
          fontFamily: "Acme",
          color: Colors.black54,
          fontSize: 18,
        ),
      ),
    ],
  );
}

GestureDetector welcomeScreenButton(BuildContext context, label, onPress) {
  return GestureDetector(
    onTap: onPress,
    child: Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.yellow,
          borderRadius: BorderRadius.circular(10),
        ),
        height: MediaQuery.of(context).size.height*0.06,
        width: MediaQuery.of(context).size.width*0.55,
        child: Center(
          child:  Text(
            label,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: "Acme",),
          ),
        ),
      ),
    ),
  );
}