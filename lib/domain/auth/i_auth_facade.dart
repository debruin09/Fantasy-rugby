import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:super_rugby_fantasy/domain/auth/auth_failure.dart';
import 'package:super_rugby_fantasy/domain/auth/user.dart';
import 'package:dartz/dartz.dart';
import 'package:super_rugby_fantasy/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
