import 'package:bloc/bloc.dart';
import 'package:chat_app/constants.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(SignUpInitial());

  Future<UserCredential?> signUp(
      {required String email, required String password}) async {
    try {
      emit(SignUpLoading());

      UserCredential userCredential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      kEmail = userCredential.user!.email.toString();
      emit(SignUpSuccess());
      return userCredential;
    } on FirebaseAuthException catch (e) {
      print(e.toString());
      print(e.code);
      if (e.code == 'weak-password') {
        emit(SignUpFailure(errMsg: 'weak-password'));
      } else if (e.code == "email already exists") {
        emit(SignUpFailure(errMsg: "email already exists"));
      } else {
        emit(SignUpFailure(
            errMsg: "There was an error!! Please try again later"));
      }
    } on Exception catch (e) {
      emit(
          SignUpFailure(errMsg: "There was an error!! Please try again later"));
    }
    return null;
  }
}
