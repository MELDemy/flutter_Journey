import 'package:chat_app/constants.dart';
import 'package:chat_app/helper/show_snack_bar.dart';
import 'package:chat_app/widgets/TappedText.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpScreen extends StatefulWidget {
  SignUpScreen({super.key});

  static String id = 'SignUpScreen';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  String? email;

  String? password;

  GlobalKey<FormState> formKey = GlobalKey();

  bool isloading = false;

  isLoading(bool isloading) {
    this.isloading = isloading;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ModalProgressHUD(
      inAsyncCall: isloading,
      child: Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Form(
            key: formKey,
            child: ListView(
              children: [
                SizedBox(height: 100),
                Image.asset(kLogo, height: 100),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Scholar Chat",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 32,
                            fontFamily: 'pacifico'))
                  ],
                ),
                SizedBox(height: 70),
                Row(children: [
                  Text("Sign Up",
                      style: TextStyle(color: Colors.white, fontSize: 24))
                ]),
                SizedBox(height: 20),
                CustomTextFormField(
                    hintText: "Email",
                    onChanged: (data) {
                      email = data;
                    }),
                SizedBox(height: 12),
                CustomTextFormField(
                    hintText: "Password",
                    onChanged: (data) {
                      password = data;
                    }),
                SizedBox(height: 35),
                CustomButton(
                  text: "Sign Up",
                  ontap: () async {
                    if (formKey.currentState!.validate()) {
                      isLoading(true);
                      try {
                        UserCredential userCredential = await signUp();
                        print(userCredential.user!.email);
                        showSnackBar(context, "Email created successfully");
                      } on FirebaseAuthException catch (e) {
                        if (e.code == 'weak-password') {
                          showSnackBar(context, "Weak password");
                        } else if (e.code == 'email-already-in-use') {
                          showSnackBar(context, "email already exists");
                        } else {
                          showSnackBar(context, "Network error");
                        }
                      } catch (e) {
                        showSnackBar(
                            context, "There was an error!! Please try again");
                        print("error" + e.toString());
                      }
                      isLoading(false);
                    }
                  },
                ),
                SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?  ",
                        style: TextStyle(color: Colors.white)),
                    TappedText(onTap: () {
                      Navigator.pop(context);
                    }),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<UserCredential> signUp() async {
    final userCredential =
        await FirebaseAuth.instance.createUserWithEmailAndPassword(
      email: email!,
      password: password!,
    );
    return userCredential;
  }
}
