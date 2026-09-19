import 'package:flutter/material.dart';

import 'package:themeal/core/di/service_locator.dart';
import 'package:themeal/core/route/app_route.dart';
import 'package:themeal/core/route/app_router.dart';

void main() async {
  await configureDependencies();

  runApp(const RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Recipe App',
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: AppRoute.home,
    );
  }
}
