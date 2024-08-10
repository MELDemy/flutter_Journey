import 'package:chat_app/constants.dart';
import 'package:chat_app/helper/show_snack_bar.dart';
import 'package:chat_app/screens/chat_screen.dart';
import 'package:chat_app/screens/signup_screen.dart';
import 'package:chat_app/widgets/TappedText.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_textfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignInScreen extends StatefulWidget {
  SignInScreen({super.key});
  static String id = 'SignInScreen';

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  GlobalKey<FormState> formKey = GlobalKey();

  String? email, password;

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
                CustomTextFormField(
                  hintText: "Email",
                  onChanged: (data) {
                    email = data;
                  },
                ),
                SizedBox(height: 12),
                CustomTextFormField(
                  hintText: "Password",
                  onChanged: (data) {
                    password = data;
                  },
                ),
                SizedBox(height: 35),
                CustomButton(
                  text: "Sign In",
                  ontap: () async {
                    if (formKey.currentState!.validate()) {
                      isLoading(true);
                      try {
                        UserCredential userCredential = await signIn();
                        print(
                            "email: " + userCredential.user!.email.toString());
                        kEmail = userCredential.user!.email.toString();
                        Navigator.pushReplacementNamed(context, ChatScreen.id);
                      } on FirebaseAuthException catch (e) {
                        print(e.toString());
                        print(e.code);
                        if (e.code == 'invalid-credential') {
                          showSnackBar(context, "email or password is wrong ");
                        } else if (e.code == 'too-many-requests') {
                          showSnackBar(
                              context, 'Too many requests!! try again later.');
                        } else {
                          showSnackBar(context, e.toString());
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
                    Text(
                      "Don't have an account?  ",
                      style: TextStyle(color: Colors.white),
                    ),
                    TappedText(
                      onTap: () {
                        Navigator.pushNamed(context, SignUpScreen.id);
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<UserCredential> signIn() async {
    return await FirebaseAuth.instance.signInWithEmailAndPassword(
      email: email!,
      password: password!,
    );
  }
}
