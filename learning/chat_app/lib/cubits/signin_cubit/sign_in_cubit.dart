import 'package:bloc/bloc.dart';
import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'sign_in_state.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit() : super(SignInInitial());

  Future<UserCredential?> signIn(
      {required String email, required String password}) async {
    try {
      emit(SignInLoadingState());

      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      kEmail = userCredential.user!.email.toString();
      emit(SignInSuccessState());
      return userCredential;
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      print(e.code);
      if (e.code == 'invalid-credential') {
        emit(SignInFailureState(errMsg: "Invalid Credentials"));
      } else if (e.code == 'too-many-requests') {
        emit(SignInFailureState(errMsg: "too many requests"));
      } else {
        emit(SignInFailureState(errMsg: e.code.toString()));
      }
    } on Exception catch (e) {
      emit(SignInFailureState(errMsg: "There is error"));
    }
    return null;
  }
}
