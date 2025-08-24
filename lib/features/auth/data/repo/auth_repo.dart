import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:marketly/core/api/api.dart';
import 'package:marketly/core/cache/local_cache.dart';
import 'package:marketly/core/constants/app_constants.dart';
import 'package:marketly/core/di/service_locator.dart';
import 'package:marketly/core/errors/failure.dart';
import 'package:marketly/features/auth/data/inputs/login_request_body.dart';
import 'package:marketly/features/auth/data/models/auth_response.dart';

class AuthRepository {
  Future<Either<Failure, AuthResponse>> login(
      LoginRequestBody requestBody) async {
    try {
      final response = await API.post(
        APIConstants.loginEndpoint,
        data: requestBody.toJson(),
      );
      AuthResponse authResponse =
          AuthResponse.fromJson(jsonDecode(response.data));
      if (response.statusCode == 200 && response.data['message'] == 'success') {
        serviceLocator<LocalCache>().saveData(
          key: AppConstants.userKey,
          value: authResponse.toJson(),
        );
        serviceLocator<LocalCache>().saveData(
          key: AppConstants.tokenKey,
          value: authResponse.token,
        );
        return Right(authResponse);
      } else {
        return Left(
          ServerFailure(
            message: authResponse.statusMsg,
          ),
        );
      }
    } catch (e) {
      return Left(
        ServerFailure(
          message: 'Error: ${e.toString()}',
        ),
      );
    }
  }
}
