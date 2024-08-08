import 'package:chat_app/constants.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  static String id = 'SignUpScreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
        child: Column(
          children: [
            Spacer(flex: 2),
            Image.asset("assets/images/scholar.png"),
            Text(
              "Scholar Chat",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontFamily: 'pacifico',
              ),
            ),
            Spacer(flex: 1),
            Row(children: [
              Text("Sign Up",
                  style: TextStyle(color: Colors.white, fontSize: 24))
            ]),
            SizedBox(height: 20),
            CustomTextField(hintText: "Email"),
            SizedBox(height: 12),
            CustomTextField(hintText: "Password"),
            SizedBox(height: 35),
            CustomButton(text: "Sign Up"),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Already have an account?  ",
                    style: TextStyle(color: Colors.white)),
                GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Text("Sign in",
                        style: TextStyle(color: Color(0xFFC7EDE6)))),
              ],
            ),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
