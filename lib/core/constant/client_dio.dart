import 'package:dio/dio.dart';

const String baseimapath = "http://127.0.0.1:5000/patient/uploads/";

class CustomDio {
  late Dio _dio;

  CustomDio() {
    _dio = Dio(BaseOptions(
      baseUrl: "http://127.0.0.1:5000/patient/",
      connectTimeout: 10000,
      receiveTimeout: 10000,
    ));
  }

  Future<Response> get(
    String path,
  ) async {
    final response = await _dio.get(
      path,
    );
    return response;
  }

  Future<Response> post(String path, {dynamic data, Options? options}) async {
    Response response = await _dio.post(path, data: data);
    return response;
  }
}
