import 'package:rocketshoes/app/data/models/product_model.dart';

import '../providers/api_provider.dart';

class ApiRepository {
  final ApiProvider _apiProvider = ApiProvider();

  Future<List<ProductModel>> getAll() {
    return _apiProvider.getAll();
  }
}
