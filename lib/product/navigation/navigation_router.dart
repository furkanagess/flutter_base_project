import 'package:flutter/material.dart';

import '../constants/navigation/navigation_constants.dart';

class NavigationRoute {
  static NavigationRoute? _instance;
  static NavigationRoute get instance {
    _instance ??= NavigationRoute._init();
    return _instance!;
  }

  NavigationRoute._init();

  Route<dynamic> generateRoute(RouteSettings args) {
    switch (args.name) {
      case NavigationConstants.ONBOARD:
        return normalNavigate(
          const Scaffold(),
        );
    }
    return MaterialPageRoute(
      builder: (context) => const Scaffold(
        body: Text("NOT FOUND"),
      ),
    );
  }
}

MaterialPageRoute normalNavigate(Widget widget) {
  return MaterialPageRoute(
    builder: (context) => widget,
  );
}
