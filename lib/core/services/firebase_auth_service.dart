import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  //* create user with email and password
  Future<User> createUserWithEmAilAndPassword(
      {required String email, required String password}) async {
    try {
      final credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in  FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()} and  code is ${e.code})');

      if (e.code == 'weak-password') {
        throw CustomException(message: 'كلمة المرور ضعيفة جدا');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(message: ' البريد الالكتروني مستخدم من قبل');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: ' تحقق من اتصالك بالانترنت');
      } else {
        throw CustomException(
            message: 'حدث خطأ غير متوقع الرجاء المحاولة لاحقا');
      }
    } catch (e) {
      log('Exception in  FirebaseAuthService.createUserWithEmailAndPassword: ${e.toString()}');
      throw CustomException(message: 'حدث خطأ غير متوقع الرجاء المحاولة لاحقا');
    }
  }

  //* sign in with email and password
  Future<User> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      log('Exception in  FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()} and  code is ${e.code})');

      if (e.code == 'user-not-found') {
        throw CustomException(
            message: 'البريد الالكتروني أو كلمة المرور غير صحيح');
      } else if (e.code == 'wrong-password') {
        throw CustomException(
            message: 'البريد الالكتروني أو كلمة المرور غير صحيح');
      } else if (e.code == 'network-request-failed') {
        throw CustomException(message: ' تحقق من اتصالك بالانترنت');
      } else {
        throw CustomException(
            message: 'حدث خطأ غير متوقع الرجاء المحاولة لاحقا');
      }
    } catch (e) {
      log('Exception in  FirebaseAuthService.signInWithEmailAndPassword: ${e.toString()}');
      throw CustomException(message: 'حدث خطأ غير متوقع الرجاء المحاولة لاحقا');
    }
  }

  //* sign in with google
  Future<User> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    return (await FirebaseAuth.instance.signInWithCredential(credential)).user!;
  }

//* sign in with facebook
  Future<User> signInWithFacebook() async {
    final LoginResult loginResult = await FacebookAuth.instance.login();

    final OAuthCredential facebookAuthCredential =
        FacebookAuthProvider.credential(loginResult.accessToken!.tokenString);

    return (await FirebaseAuth.instance
            .signInWithCredential(facebookAuthCredential))
        .user!;
  }
}
