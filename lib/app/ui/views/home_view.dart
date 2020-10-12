import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:rocketshoes/app/controllers/home_controller.dart';
import 'package:rocketshoes/app/data/models/product_model.dart';
import 'package:rocketshoes/app/data/repositories/api_repository.dart';
import 'package:rocketshoes/app/routes/routes.dart';
import 'package:rocketshoes/app/ui/widgets/cart/grid_tile_widget.dart';

class HomeView extends StatelessWidget {
  final HomeController _controllerHome = Get.find<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: SvgPicture.asset(
          'assets/images/logo.svg',
          height: 25,
        ),
        actions: [
          IconButton(
              icon: const Icon(
                Icons.shopping_basket,
              ),
              onPressed: () => Get.toNamed(Routes.cart)),
        ],
      ),
      body: FutureBuilder(
          future: ApiRepository().getAll(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.active:
              case ConnectionState.done:
                return GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    padding: const EdgeInsets.all(16),
                    children: [
                      ...snapshot.data
                          .map((ProductModel productModel) => GridTileWidget(
                                product: productModel,
                              ))
                          .toList()
                    ]);

              case ConnectionState.none:
              case ConnectionState.waiting:
              default:
                return const Center(
                  child: CircularProgressIndicator(),
                );
            }
          }),
    );
  }
}
