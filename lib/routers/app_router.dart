import 'package:flutter/material.dart';

RouteFactory routes() {
  return (RouteSettings settings) {
    final Map<String, dynamic>? arguments =
        settings.arguments as Map<String, dynamic>?;

    Widget screen;
    switch (settings.name) {
      case '/':
        screen = Container();
        break;
      default:
        screen = Container();
    }
    return MaterialPageRoute(builder: (BuildContext context) => screen);
  };
}
