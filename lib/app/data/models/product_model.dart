import 'package:meta/meta.dart';

class ProductModel {
  int id;
  String title;
  num price;
  String image;

  ProductModel(
      {@required this.id,
      @required this.title,
      @required this.price,
      @required this.image});

  factory ProductModel.fromMap(Map<String, dynamic> map) {
    return ProductModel(
        id: map['id'] as int,
        title: map['title'] as String,
        price: map['price'] as num,
        image: map['image'] as String);
  }
}
