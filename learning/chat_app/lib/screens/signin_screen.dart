import 'package:chat_app/constants.dart';
import 'package:chat_app/screens/signup_screen.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});
  static String id = 'SignInScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: ListView(
          children: [
            SizedBox(height: 100),
            Image.asset("assets/images/scholar.png", height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Scholar Chat",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 32,
                    fontFamily: 'pacifico',
                  ),
                )
              ],
            ),
            SizedBox(height: 70),
            Row(children: [
              Text("Sign In",
                  style: TextStyle(color: Colors.white, fontSize: 24))
            ]),
            SizedBox(height: 20),
            CustomTextField(hintText: "Email"),
            SizedBox(height: 12),
            CustomTextField(hintText: "Password"),
            SizedBox(height: 35),
            CustomButton(text: "Sign In"),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Don't have an account?  ",
                    style: TextStyle(color: Colors.white)),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, SignUpScreen.id);
                  },
                  child: Text(
                    "Sign up",
                    style: TextStyle(color: Color(0xFFC7EDE6)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
