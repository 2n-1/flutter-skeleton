import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:<project name>/resolvers/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ScopedModel<NavigationModel>(
      model: NavigationModel(),
      child: ScopedModel<BluetoothModel>(
          model: BluetoothModel(),
          child: MaterialApp(
              debugShowCheckedModeBanner: false,
              home: WelcomeScreen(),
              routes: Routes.RoutesList))));
}
