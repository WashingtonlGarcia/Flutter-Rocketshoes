import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rocketshoes/app/routes/routes.dart';

void main() {
  runApp(const GetMaterialApp(
    initialRoute: Routes.initialRoute,
    onGenerateRoute: Routes.onGenerateRoutes,
  ));
}
