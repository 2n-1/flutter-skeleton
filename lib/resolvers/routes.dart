import 'package:flutter/material.dart';
import 'package:<project name>/ui/screens/home.dart';

class Routes {
  String Home = '/home';
  String Profile = '/profile';
  String Settings = '/settings';

  Widget get Index => HomeScreen();

  Map<String, WidgetBuild> get RoutesList => {
        Home: (BuildContext context) => HomeScreen(),
      };

  static final Routes _singleton = Routes._internal();
  factory Routes() {
    return _singleton;
  }

  Routes._internal();
}

Routes Routes = Routes();
