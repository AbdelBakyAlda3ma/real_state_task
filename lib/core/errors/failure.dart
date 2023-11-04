// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dio/dio.dart';

abstract class Failure {
  String errorMessage;
  Failure({
    required this.errorMessage,
  });
}

class ServerFailure extends Failure {
  ServerFailure({
    required super.errorMessage,
  });

  factory ServerFailure.fromDio(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure(
            errorMessage: 'Connection timeout with api server');

      case DioExceptionType.sendTimeout:
        return ServerFailure(errorMessage: 'Send timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailure(errorMessage: 'Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailure(errorMessage: 'badCertificate with api server');

      case DioExceptionType.cancel:
        return ServerFailure(errorMessage: 'Request to ApiServer was canceld');
      case DioExceptionType.connectionError:
        return ServerFailure(errorMessage: 'No Internet Connection');
      case DioExceptionType.unknown:
        return ServerFailure(
            errorMessage: 'Opps There was an Error, Please try again');
      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            e.response!.statusCode!, e.response!.data);
    }
  }

  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 404) {
      return ServerFailure(
          errorMessage: 'Your request was not found, please try later');
    } else if (statusCode == 500) {
      return ServerFailure(
          errorMessage: 'There is a problem with server, please try later');
    } else if (statusCode == 413) {
      return ServerFailure(
        errorMessage: 'Max size is 300 KB, the file is too large!',
      );
    } else if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(
        errorMessage: response['massege']?['email']?[0] ??
            response['massage'] ??
            response.toString(),
      );
    } else {
      return ServerFailure(
        errorMessage: statusCode.toString(),
        // 'There was an error , please try again',
      );
    }
  }
}
