import 'dart:io';

import 'package:dio/dio.dart';

abstract class Failures {
  final String errMsg;

  const Failures({required this.errMsg});
}

class ServerFailure extends Failures {
  ServerFailure( {required super.errMsg});

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(errMsg: 'Connection timeout with API server');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errMsg: 'Send timeout with API server');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errMsg: 'Receive timeout with API server');
      case DioExceptionType.badCertificate:
        return ServerFailure(errMsg: 'Bad certificate with API server');
      case DioExceptionType.badResponse:
        ServerFailure.fromResponse(
          dioError.response!.statusCode!,
          dioError.response!.data,
        );
      case DioExceptionType.cancel:
        return ServerFailure(errMsg: 'Request to API server was canceled');
      case DioExceptionType.connectionError:
        ServerFailure(errMsg: 'No internet connection');
      case DioExceptionType.unknown:
        if (dioError.error is SocketException) {
          return ServerFailure(errMsg: 'No internet connection');
        }
        return ServerFailure(errMsg: 'Unexpected error, try later');
    }
    return ServerFailure(errMsg: 'Unexpected error, try later');
  }

  factory ServerFailure.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(errMsg: response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure(errMsg: 'Your request not found, try later');
    } else if (statusCode == 500) {
      return ServerFailure(errMsg: 'Internal server error, try later');
    } else {
      return ServerFailure(errMsg: 'Opps there was an error, try later');
    }
  }
}
