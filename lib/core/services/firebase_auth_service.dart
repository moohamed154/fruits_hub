import 'dart:developer';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';

class FirebaseAuthService {
  /// create user with email and password
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

  /// sign in with email and password
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
}
