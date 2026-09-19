import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themeal/core/di/service_locator.dart';
import 'package:themeal/feature/home/persentation/cubit/home_cubit.dart';
import 'package:themeal/feature/home/persentation/screens/home_screen.dart';


class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
   case '/home':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(serviceLocator.get())..getRandomMeal(),
            child: HomeScreen(),
          ),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
