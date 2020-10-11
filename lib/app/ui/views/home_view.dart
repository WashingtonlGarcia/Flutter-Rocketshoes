import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 25,
        ),
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              icon: const Icon(
                Icons.shopping_basket,
              ),
              onPressed: () {}),
        ],
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(16),
        children: [
          for (int cout = 0; cout < 10; cout++)
            Container(
              decoration: BoxDecoration(
                  color: const Color(0xffffffff),
                  borderRadius: BorderRadius.circular(4)),
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                      child: Image.network(
                          'https://cdn.awsli.com.br/600x450/1196/1196500/produto/44555941/tenis-adidas-nmd-runner-boost-preto-preto-68124be7.jpg')),
                  Text(
                    'Tenis muito legal',
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff333333),
                    ),
                  ),
                  Text(
                    'R\$129,90',
                    style: const TextStyle(
                      color: Color(0xff333333),
                    ),
                  ),
                  SizedBox(
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
                                Icon(
                                  Icons.add_shopping_cart_outlined,
                                  size: 16,
                                  color: const Color(0xffffffff),
                                ),
                                Text(
                                  '500',
                                  style: const TextStyle(
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
                    ),
                  )
                ],
              ),
            ),
        ],
      ),
    );
  }
}
