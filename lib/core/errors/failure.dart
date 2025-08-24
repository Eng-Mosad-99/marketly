import 'package:dio/dio.dart';

abstract class Failure {
  final String message;
  final int? code;

  Failure({required this.message, this.code});
}

class ServerFailure extends Failure {
  ServerFailure({required super.message, super.code});

  factory ServerFailure.fromDioException(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(message: 'Connection Timeout with Api service');

      case DioExceptionType.sendTimeout:
        return ServerFailure(message: 'Send Timeout with Api service');

      case DioExceptionType.receiveTimeout:
        return ServerFailure(message: 'Receive Timeout with Api service');

      case DioExceptionType.badCertificate:
        return ServerFailure(message: 'Bad Certificate with Api service');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioException.response!.statusCode!, dioException.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure(message: 'Request Api service was cancelled');

      case DioExceptionType.connectionError:
        return ServerFailure(message: 'Connection Error with Api service');

      case DioExceptionType.unknown:
        if (dioException.message!.contains('SocketException')) {
          return ServerFailure(message: 'Internet Connection');
        }
        return ServerFailure(message: 'UnExpected Error please try again!');
      default:
        return ServerFailure(message: 'Opps, There is an error');
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 ||
        statusCode == 401 ||
        statusCode == 403 ||
        statusCode == 422) {
      return ServerFailure(
          message: response['message'], code: response['status']);
    } else if (statusCode == 404) {
      return ServerFailure(
          message: 'Your request not found , please try again later',
          code: statusCode);
    } else if (statusCode == 500) {
      return ServerFailure(
          message: 'Internal server error , please try again later',
          code: statusCode);
    } else {
      return ServerFailure(message: 'Opps, There is an error');
    }
  }

}
