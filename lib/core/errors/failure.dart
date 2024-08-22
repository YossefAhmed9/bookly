import 'package:dio/dio.dart';

abstract class Failure {}

class ServerFailure extends Failure {
  final String errorMessage;

  ServerFailure(this.errorMessage);

  factory ServerFailure.fromDioException(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.badResponse:
        return ServerFailure('Bad Response');

      case DioExceptionType.connectionError:
        return ServerFailure('No Internet connection');

      case DioExceptionType.connectionTimeout:
        return ServerFailure('Request took too long!');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('Request took too long to be received!');

      case DioExceptionType.sendTimeout:
        return ServerFailure('Request took too long to be send!');

      case DioExceptionType.badCertificate:
        return ServerFailure('Don\'t have the certificate to do that');

      case DioExceptionType.cancel:
        return ServerFailure('Server failed');
      case DioExceptionType.unknown:
        return ServerFailure('We don\' know what actually happened!!!');
    }
  }
  factory ServerFailure.fromDioStatusCode(DioException dioException, dynamic response) {
    String statusCode = dioException.response!.statusCode.toString();

    if (statusCode.startsWith('1')) {
      return ServerFailure('Received and being processed');
    }

    if (statusCode.startsWith('2')) {
      return ServerFailure('Success !!');
    }

    if (statusCode.startsWith('3')) {
      return ServerFailure('Redirection');
    }

    if (statusCode.startsWith('4')) {
      return ServerFailure('Client Errors. It\'s your fault!');
    }

    if (statusCode.startsWith('5')) {
      return ServerFailure(
          'Server Error.We\'er brave enough to say it\'s our fault');
    }
 return ServerFailure(
        'Unexpected error. try again!');
  }
}
