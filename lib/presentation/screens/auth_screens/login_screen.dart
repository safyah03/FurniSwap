import 'package:flutter/material.dart';
import 'package:furniswap/auth_screens/forgot_password_screen.dart';
import 'package:furniswap/auth_screens/sign_up_screen.dart';
import 'package:furniswap/icons/icons.dart';
import 'package:furniswap/nav_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Widget buildTextFormField(
      {required String lable,
      required bool obscureText,
      required TextInputType type,
      required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          lable,
          style: TextStyle(fontSize: 14),
        ),
        SizedBox(
          height: 10,
        ),
        TextFormField(
          obscureText: obscureText,
          keyboardType: type,
          decoration: InputDecoration(
            hintText: "Enter your $hintText",
            filled: true,
            fillColor: Color(0xffF5F1EA),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Color(0xffE8E0D5), width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Color(0xffE8E0D5), width: 1)),
            errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: BorderSide(color: Colors.red, width: 1)),
          ),
        ),
      ],
    );
  }

  Widget buildSignUpWithButton(
      {required IconData icon, required String lable}) {
    return TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          //maximumSize: Size(140, 50),
          side: BorderSide(
            color: Color(0xffE5E7EB),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              icon,
              color: Colors.black,
            ),
            Text(
              lable,
              style: TextStyle(color: Colors.black),
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 100),
                    child: Text(
                      "Welcome to Furni Swap",
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Login to your account",
                    style: TextStyle(fontSize: 16, color: Color(0xff6B7280)),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Form(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        buildTextFormField(
                            lable: "Email address",
                            obscureText: false,
                            type: TextInputType.emailAddress,
                            hintText: "Email"),
                        SizedBox(
                          height: 20,
                        ),
                        buildTextFormField(
                            lable: "Password",
                            obscureText: true,
                            type: TextInputType.visiblePassword,
                            hintText: "Password"),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {},
                                child: Text("Remember me",
                                    style: TextStyle(
                                        fontSize: 14, color: Colors.black))),
                            TextButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              ForgotPasswordScreen()));
                                },
                                child: Text(
                                  "Forgot Password?",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff8B5E3C)),
                                ))
                          ],
                        ),
                        ElevatedButton(
                            onPressed: () {
                              Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => NavScreen(
                                          initialIndex: 0,
                                        )),
                                (route) => false,
                              );
                            },
                            style: ElevatedButton.styleFrom(
                                elevation: 5,
                                minimumSize: Size(double.infinity, 48),
                                backgroundColor: Color(0xff694A38),
                                shadowColor: Colors.black26,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: const Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(top: 40, bottom: 15),
                          child: Row(
                            children: [
                              Expanded(
                                child: Divider(
                                  color: Color(0xffE5E7EB),
                                  thickness: 1.5,
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 3.0),
                                child: Text(
                                  "Or continue with",
                                  style: TextStyle(
                                      fontSize: 14, color: Color(0xff6B7280)),
                                ),
                              ),
                              Expanded(
                                child: Divider(
                                  color: Color(0xffE5E7EB),
                                  thickness: 1.5,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(children: [
                          Expanded(
                            child: buildSignUpWithButton(
                                icon: MyFlutterApp.google, lable: "Google"),
                            flex: 4,
                          ),
                          Expanded(
                            child: SizedBox(),
                            flex: 1,
                          ),
                          Expanded(
                            child: buildSignUpWithButton(
                              icon: MyFlutterApp.facebook,
                              lable: "Facebook",
                            ),
                            flex: 4,
                          ),
                        ]),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 13),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: TextStyle(fontSize: 14, color: Colors.black),
                        ),
                        TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUpScreen()));
                            },
                            child: Text(
                              "Sign up",
                              style: TextStyle(
                                  fontSize: 14, color: Color(0xff8B5E3C)),
                            ))
                      ],
                    ),
                  )
                ]),
          ),
        ));
  }
}
