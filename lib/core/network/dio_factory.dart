import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'api_constants.dart';

class DioFactory {
  static Dio create() {
    return Dio(
      BaseOptions(
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        headers: {'Accept': 'application/json'},
      ),
    );
  }
}

@module
abstract class DioModule {
  @lazySingleton
  Dio get dio => DioFactory.create();
}
