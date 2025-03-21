import 'package:dartz/dartz.dart';
import 'package:fruits_hub/core/errors/failure.dart';
import 'package:fruits_hub/features/auth/entities/user_entity.dart';

abstract class AuthRepo {
  //* create user with email and password
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String email,
    String password,
    String name,
  );

//* sign in with email and password
  Future<Either<Failure, UserEntity>> signInWithEmailAndPassword(
    String email,
    String password,
  );

//* sign in with google
  Future<Either<Failure, UserEntity>> signInWithGoogle();

//* sign in with facebook
  Future<Either<Failure, UserEntity>> signInWithFacebook();

//* sign in with apple
  Future<Either<Failure, UserEntity>> signInWithApple();

//* add user data to firestore
  Future addUserData({required UserEntity user});
}
