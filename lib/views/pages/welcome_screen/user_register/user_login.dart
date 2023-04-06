import 'package:dressing_outlet/views/pages/welcome_screen/user_register/user_signup.dart';
import 'package:flutter/material.dart';

import '../components.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool changedsetting = false;
  bool visibiltypass = true;

  final emailController = TextEditingController();
  final passController = TextEditingController();
  final passConfirmController = TextEditingController();

  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(
          decelerationRate: ScrollDecelerationRate.fast,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              height: 40,
            ),
            const Text("Log In",
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
                  const SizedBox(
                    height: 20,
                  ),
                  Form(
                    key: _formkey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          maxLines: 1,
                          decoration: inputDecorate("Email"),
                          validator: (v) {
                            if (v!.isEmpty) {
                              return "Please Enter Your Email";
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        TextFormField(
                          controller: passController,
                          maxLines: 1,
                          maxLength: 12,
                          obscureText: visibiltypass,
                          style: const TextStyle(color: Colors.black),
                          decoration: InputDecoration(
                              hintText: "Password",
                              fillColor: Colors.grey.shade200,
                              filled: true,
                              border: InputBorder.none,
                              suffixIcon: IconButton(
                                icon: visibiltypass
                                    ? const Icon(Icons.visibility_off,
                                    color: Colors.grey)
                                    : const Icon(
                                  Icons.visibility,
                                  color: Colors.yellow,
                                ),
                                onPressed: () {
                                  setState(() {
                                    visibiltypass = !visibiltypass;
                                  });
                                },
                              )),
                          validator: (v) {
                            if (v!.isEmpty) {
                              return "Please Enter Your Password";
                            } else if (v.length < 8) {
                              return "Please Enter atleast 8 Character";
                            }
                            return null;
                          },
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      TextButton(
                          onPressed: () {
                            setState(() {});
                          },
                          child: const Text(
                            'Forgot Password',
                            style: TextStyle(color: Colors.yellow,
                              fontFamily: "Acme",
                              fontSize: 18,),
                          )),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  GestureDetector(
                    onTap: () => moveToHome(context),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.yellow,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      height: 47,
                      alignment: Alignment.center,
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: "Acme",
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        "Not registered yet?",
                        style: TextStyle(
                          fontFamily: "Acme",
                          fontSize: 18,
                          color: Colors.black54
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                            Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignupPage()));
                        },
                        child: const Text(
                          'Create an account',
                          style: TextStyle(color: Colors.yellow,
                          fontFamily: "Acme",
                            fontSize: 18,),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text('Or Sign Up Using',
                    style: TextStyle(
                      color: Colors.black54,
                      fontFamily: "Acme",
                      fontSize: 18,),
                  ),
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
                        const SizedBox(
                          height: 20,
                        ),

                          ],
                        ),
                  ),
                ],
              ),
            ),
          ],
    ),
      ),
        );
  }

  moveToHome(BuildContext context) {
    if (_formkey.currentState!.validate()) {
      // setState(() {
      //   changedsetting = true;
      // });

      // Navigator.pushReplacement(
      //     context, MaterialPageRoute(builder: (context) => const Home()));

      // setState(() {
      //   changedsetting = false;
      // });
    }
  }
}
