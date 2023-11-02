import 'package:dio/dio.dart';

abstract class Failuar {
  final String errMasages;

  const Failuar(this.errMasages);
}

class ServerFailuar extends Failuar {
  ServerFailuar(super.errMasages);

  factory ServerFailuar.error(DioException dioException) {
    switch (dioException.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuar("Check Your Connection");
      case DioExceptionType.sendTimeout:
        return ServerFailuar("weak Connection");
      case DioExceptionType.receiveTimeout:
        return ServerFailuar('Recived TimeOut');
      case DioExceptionType.badCertificate:
        return ServerFailuar('badCertificate');
      case DioExceptionType.badResponse:
        return ServerFailuar('Bad Response');
      case DioExceptionType.cancel:
        return ServerFailuar("the process is canceld");
      case DioExceptionType.connectionError:
        return ServerFailuar("Connection Error");
      case DioExceptionType.unknown:
        return ServerFailuar("Unkown");
    }
  }
}
