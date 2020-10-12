import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rocketshoes/app/data/models/product_model.dart';
import '../../../utils/extensions/format_number.dart';

class GridTileWidget extends StatelessWidget {
  final ProductModel product;

  const GridTileWidget({@required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color(0xffffffff),
          borderRadius: BorderRadius.circular(4)),
      padding: const EdgeInsets.all(8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(child: Image.network(product.image)),
          Text(
            product.title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Color(0xff333333),
            ),
          ),
          Text(
            product.price.currencyPrice(),
            style: const TextStyle(
              color: Color(0xff333333),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Material(
              borderRadius: BorderRadius.circular(4),
              color: const Color(0xff7159c1),
              child: InkWell(
                borderRadius: BorderRadius.circular(4),
                onTap: () {},
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      color: Colors.black12,
                      height: 30,
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Icon(
                            Icons.add_shopping_cart_outlined,
                            size: 16,
                            color: Color(0xffffffff),
                          ),
                          const Text(
                            '50',
                            style: TextStyle(
                              color: Color(0xffffffff),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(8),
                      height: 30,
                      child: const Align(
                          child: Text(
                        'Adicionar',
                        style: TextStyle(
                          color: Color(0xffffffff),
                          fontWeight: FontWeight.w500,
                        ),
                      )),
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
