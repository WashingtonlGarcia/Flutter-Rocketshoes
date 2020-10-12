import 'package:meta/meta.dart';

class StockModel {
  int id;
  int amount;

  StockModel({
    @required this.id,
    @required this.amount,
  });

  factory StockModel.fromMap(dynamic map) {
    return StockModel(
      id: map['id'] as int,
      amount: map['amount'] as int,
    );
  }
}
