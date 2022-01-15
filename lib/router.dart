import 'package:api_chunish_uchun/screens/home_page/home_page.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (context) => const HomePage());
      case '/d':
        return MaterialPageRoute(builder: (context) => const HomePage());
    }
  }
}
