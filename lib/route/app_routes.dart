import 'package:flutter/material.dart';

import '../presentation_layer/pages/home.dart';
import '../presentation_layer/pages/second.dart';

 class AppRoutes{
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => Home(),
        );
      case '/second':
        return MaterialPageRoute(
          builder: (_) => SecondScreen(
          ),
        );
      default:
        return null;
    }
  }
}