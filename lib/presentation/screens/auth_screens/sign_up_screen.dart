import 'package:flutter/material.dart';
import 'package:furniswap/presentation/screens/auth_screens/login_screen.dart';
import 'package:furniswap/icons/icons.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  Widget buildTextFormField(
      {required bool obscureText,
      required TextInputType type,
      required IconData prefixIcon,
      required String hintText}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          obscureText: obscureText,
          keyboardType: type,
          decoration: InputDecoration(
            prefixIcon: Icon(prefixIcon),
            hintText: hintText,
            filled: true,
            fillColor: Colors.white,
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
        SizedBox(
          height: 15,
        )
      ],
    );
  }

  Widget buildSignUpWithButton(
      {required IconData icon, required String lable}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
              elevation: 0,
              minimumSize: Size(double.infinity, 48),
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  side: BorderSide(color: Color(0xffDED0C3), width: 1),
                  borderRadius: BorderRadius.circular(8))),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                color: Colors.black,
              ),
              Text(
                lable,
                style: TextStyle(color: Color(0xff4A3419), fontSize: 16),
              )
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5F2EB),
      appBar: AppBar(
        backgroundColor: Color(0xffF5F2EB),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign Up",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff4A3419)),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buildTextFormField(
                        obscureText: false,
                        type: TextInputType.name,
                        prefixIcon: Icons.person_outline,
                        hintText: "Full Name"),
                    buildTextFormField(
                        obscureText: false,
                        type: TextInputType.emailAddress,
                        prefixIcon: Icons.email_outlined,
                        hintText: "Email"),
                    buildTextFormField(
                        obscureText: true,
                        type: TextInputType.visiblePassword,
                        prefixIcon: Icons.lock,
                        hintText: "Password"),
                    buildTextFormField(
                        obscureText: true,
                        type: TextInputType.visiblePassword,
                        prefixIcon: Icons.lock,
                        hintText: "Confirm Password"),
                    ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            elevation: 5,
                            minimumSize: Size(double.infinity, 48),
                            backgroundColor: Color(0xff694A38),
                            shadowColor: Colors.black26,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        child: const Text(
                          "Sign Up",
                          style: TextStyle(color: Colors.white),
                        )),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 13),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Already have an account?",
                            style: TextStyle(
                                fontSize: 14, color: Color(0xff8B7355)),
                          ),
                          TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => LoginScreen()));
                              },
                              child: Text(
                                "Login",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Color(0xff4A3419),
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        "Or sign up with",
                        style:
                            TextStyle(fontSize: 16, color: Color(0xff8B7355)),
                      ),
                    ),
                    buildSignUpWithButton(
                        icon: MyFlutterApp.google,
                        lable: "Continue with Google"),
                    buildSignUpWithButton(
                        icon: MyFlutterApp.facebook,
                        lable: "Continue with Facebook"),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
