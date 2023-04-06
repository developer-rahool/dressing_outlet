import 'package:dressing_outlet/views/pages/welcome_screen/user_register/user_login.dart';
import 'package:flutter/material.dart';
import '../components.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  // final nameController = TextEditingController();
  // final emailController = TextEditingController();
  // final phoneController = TextEditingController();
  // final passController = TextEditingController();
  //
  // final passConfirmController = TextEditingController();

  final _formkey = GlobalKey<FormState>();
  // bool changedsetting = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
            decelerationRate: ScrollDecelerationRate.fast),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text("Sign Up",
            style: TextStyle(
              fontFamily: "Acme",
              fontSize: 20,
              color: Colors.black87,
            ),),
            const SizedBox(
              height: 40,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Form(
                      key: _formkey,
                      child: Column(
                        children: [
                          TextFormField(
                            maxLines: 1,
                            keyboardType: TextInputType.name,
                            decoration:  inputDecorate("Full Name"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Full Name";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            maxLines: 1,
                            keyboardType: TextInputType.emailAddress,
                            decoration: inputDecorate("Email"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Email";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            maxLines: 1,
                            keyboardType: TextInputType.number,
                            decoration: inputDecorate("Phone Number"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Phone Number";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          TextFormField(
                            maxLines: 1,
                            maxLength: 12,
                            decoration: inputDecorate("Password"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Password";
                              } else if (value.length < 6) {
                                return "Password Should be 8 Character";
                              }
                              return null;
                            },
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          TextFormField(
                            maxLines: 1,
                            maxLength: 12,
                            decoration: inputDecorate("Confirm Password"),
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please Enter Your Password";
                              } else if (value.length < 6) {
                                return "Password Should be 8 Character";
                              }
                              return null;
                            },
                          ),
                        ],
                      )),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        moveToSignupPage(context);
                      });
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      alignment: Alignment.center,
                      height: 47,
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(
                          fontFamily: "Acme",
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text("Already have an account?",
                  style: TextStyle(
                    fontFamily: "Acme",
                    color: Colors.black54,
                    fontSize: 18,
                  ),),
                      TextButton(
                        onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginPage()),
                            );
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.yellow,fontFamily: "Acme",
                          fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Or Sign Up Using',
                    style: TextStyle(
                    fontFamily: "Acme",
                    color: Colors.black54,
                    fontSize: 18,),),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //via Google Register
                        GestureDetector(
                          onTap: (){},
                          child: viaUsingButton(const AssetImage("images/inapp/google.jpg"), "Google"),
                        ),
                        //via Facebook Register
                        GestureDetector(
                          onTap: (){},
                          child: viaUsingButton(const AssetImage("images/inapp/facebook.jpg"), "Facebook"),
                        ),
                        //via Guest Register
                        GestureDetector(
                          onTap: (){},
                          child: viaUsingButton(const AssetImage("images/inapp/guest.jpg"), "Guest"),
                        ),

                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }



  moveToSignupPage(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      // setState(() {
      //   changedsetting = true;
      // });
      // Navigator.pushReplacement(
      //   context,
      //   MaterialPageRoute(builder: (context) => const SignupPage()),
      // );
      // setState(() {
      //   changedsetting = false;
      // });
    }
  }
}
