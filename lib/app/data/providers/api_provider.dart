import 'package:dio/dio.dart';

import '../models/product_model.dart';

const String endPoint = 'http://10.0.2.2:3000/products';

class ApiProvider {
  final Dio _dio = Dio();
  Future<List<ProductModel>> getAll() async {
    try {
      final Response response = await _dio.get(endPoint);
      return (response.data as List)
          .cast<Map<String, dynamic>>()
          .map((Map<String, dynamic> map) => ProductModel.fromMap(map))
          .toList();
    } catch (_) {
      rethrow;
    }
  }
}
