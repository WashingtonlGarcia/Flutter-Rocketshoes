import 'package:flutter/material.dart';

class CartView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Carrinho'),
        ),
        body: Card(
          color: Colors.white,
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(16),
            children: [
              Table(
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(children: [
                    Text(
                      'Produto',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff999999),
                      ),
                    ),
                    Text(
                      'QTD',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff999999),
                      ),
                    ),
                    Text(
                      'SUBTOTAL',
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff999999),
                      ),
                    ),
                  ]),
                  for (int cout = 0; cout < 20; cout++)
                    TableRow(children: [
                      Text(
                        'Tenis muito massa R\$192,90',
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Color(0xff333333),
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                              icon: Icon(
                                Icons.remove_circle_outline,
                                size: 14,
                                color: const Color(0xff7159c1),
                              ),
                              onPressed: () {}),
                          Expanded(
                            child: Text(
                              '10',
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff333333),
                              ),
                            ),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.add_circle_outline,
                                size: 14,
                                color: const Color(0xff7159c1),
                              ),
                              onPressed: () {})
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              'R\$2587,80',
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                color: Color(0xff333333),
                              ),
                            ),
                          ),
                          IconButton(
                              icon: Icon(
                                Icons.delete,
                                size: 14,
                                color: const Color(0xff7159c1),
                              ),
                              onPressed: () {})
                        ],
                      ),
                    ])
                ],
              ),
              Divider(),
              Row(
                children: [
                  Material(
                    borderRadius: BorderRadius.circular(4),
                    color: const Color(0xff7159c1),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(4),
                      onTap: () {},
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        height: 30,
                        child: const Align(
                            child: Text(
                          'Finalizar pedido',
                          style: TextStyle(
                            color: Color(0xffffffff),
                            fontWeight: FontWeight.w500,
                          ),
                        )),
                      ),
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Total: R\$1920,28',
                    style: TextStyle(
                      color: Color(0xff333333),
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
