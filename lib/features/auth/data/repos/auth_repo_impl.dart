import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/exceptions.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/core/services/firebase_auth_service.dart';
import 'package:fruits_hub/features/auth/data/models/user_model.dart';
import 'package:fruits_hub/features/auth/repos/auth_repo.dart';
import 'package:fruits_hub/features/auth/entities/user_entity.dart';

class AuthRepoImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthRepoImpl({required this.firebaseAuthService});

  //** create user with email and password
  @override
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
      String email, String password, String name) async {
    try {
      var user = await firebaseAuthService.createUserWithEmAilAndPassword(
          email: email, password: password);
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.createUserWithEmailAndPassword: ${e.toString()}');
      return Left(
        ServerFailure(
          'حدث خطأ غير متوقع الرجاء المحاولة لاحقا',
        ),
      );
    }
  }

//** sign in with email and password
  @override
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      var user = await firebaseAuthService.signInWithEmailAndPassword(
          email: email, password: password);
      return Right(UserModel.fromFirebaseUser(user));
    } on CustomException catch (e) {
      return Left(ServerFailure(e.message));
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithEmailAndPassword: ${e.toString()}');
      return Left(
        ServerFailure(
          'حدث خطأ غير متوقع الرجاء المحاولة لاحقا',
        ),
      );
    }
  }

  //** sign in with google
  @override
  Future<Either<Failure, UserEntity>> signInWithGoogle() async {
    try {
      var user = await firebaseAuthService.signInWithGoogle();
      return Right(
        UserModel.fromFirebaseUser(user),
      );
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithGoogle: ${e.toString()}');
      return Left(
        ServerFailure(
          'حدث خطأ غير متوقع الرجاء المحاولة لاحقا',
        ),
      );
    }
  }

//* sign in with facebook
  @override
  Future<Either<Failure, UserEntity>> signInWithFacebook() async {
    try {
      var user = await firebaseAuthService.signInWithFacebook();
      return Right(
        UserModel.fromFirebaseUser(user),
      );
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithFacebook: ${e.toString()}');
      return Left(
        ServerFailure(
          'حدث خطأ غير متوقع الرجاء المحاولة لاحقا',
        ),
      );
    }
  }

  //** sign in with apple

  @override
  Future<Either<Failure, UserEntity>> signInWithApple() async {
    try {
      var user = await firebaseAuthService.signInWithApple();
      return Right(
        UserModel.fromFirebaseUser(user),
      );
    } catch (e) {
      log('Exception in AuthRepoImpl.signInWithApple: ${e.toString()}');
      return Left(
        ServerFailure(
          'حدث خطأ غير متوقع الرجاء المحاولة لاحقا',
        ),
      );
    }
  }
}
