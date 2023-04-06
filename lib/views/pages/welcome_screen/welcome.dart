import 'package:dressing_outlet/views/pages/welcome_screen/user_register/user_signup.dart';
import 'package:flutter/material.dart';

import 'components.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key,}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  const SizedBox(
            //   height: 80,
            // ),
             const SizedBox(
              height: 200,
              width: 200,
              child: Image(image: AssetImage("Images/inapp/download.png"), fit: BoxFit.fill,),
            ),
             const SizedBox(
              height: 20,
            ),
            const Text(
              "Register",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                fontFamily: "Acme",
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            welcomeScreenButton(context, "Buyer", (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> const SignupPage()));
            }),
            const SizedBox(
              height: 5,
            ),
            welcomeScreenButton(context, "Seller", (){

            }),



          ],
        ),
      ),
    );
  }
}
