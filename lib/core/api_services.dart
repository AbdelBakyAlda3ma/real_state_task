import 'package:dio/dio.dart';

class ApiService {
  final Dio _dio = Dio(
    BaseOptions(
      baseUrl: "https://jsonplaceholder.typicode.com/",
    ),
  );

  ApiService();

  Future<dynamic> get({
    required String path,
  }) async {
    var response = await _dio.get(
      path,
    );
    return response.data;
  }
}
