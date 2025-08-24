import 'package:dartz/dartz.dart';
import 'package:marketly/core/errors/failure.dart';
import 'package:marketly/features/auth/data/models/auth_response.dart';

abstract class AuthRepository{
  Future<Either<Failure , AuthResponse>> login();
} 