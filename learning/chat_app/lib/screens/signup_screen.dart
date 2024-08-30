import 'package:chat_app/constants.dart';
import 'package:chat_app/cubits/signup_cubit/sign_up_cubit.dart';
import 'package:chat_app/helper/show_snack_bar.dart';
import 'package:chat_app/widgets/TappedText.dart';
import 'package:chat_app/widgets/custom_button.dart';
import 'package:chat_app/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  static String id = 'SignUpScreen';

  late String? email;

  late String? password;

  final GlobalKey<FormState> formKey = GlobalKey();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignUpCubit, SignUpState>(
      listener: (context, state) {
        if (state is SignUpLoading) {
          isLoading = true;
        } else if (state is SignUpSuccess) {
          Navigator.pop(context);
          isLoading = false;
        } else if (state is SignUpFailure) {
          showSnackBar(context, state.errMsg);
          isLoading = false;
        }
      },
      builder: (context, state) {
        return ModalProgressHUD(
          inAsyncCall: isLoading,
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
                      onTap: () async {
                        if (formKey.currentState!.validate()) {
                          BlocProvider.of<SignUpCubit>(context)
                              .signUp(email: email!, password: password!);
                        }
                      },
                    ),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Already have an account?  ",
                            style: TextStyle(color: Colors.white)),
                        TappedText(
                            text: "Sign in",
                            onTap: () {
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
      },
    );
  }
}
