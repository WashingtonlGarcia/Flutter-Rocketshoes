import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'app/routes/routes.dart';
import 'app/ui/themes/themes.dart';

void main() {
  runApp(GetMaterialApp(
    initialRoute: Routes.initialRoute,
    theme: theme,
    onGenerateRoute: Routes.onGenerateRoutes,
  ));
}
