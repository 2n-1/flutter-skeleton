import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

import 'package:sidekicktool/models/bluetooth_model.dart';
import 'package:sidekicktool/models/navigation.dart';

import 'package:sidekicktool/ui/PairingScreen.dart';
import 'package:sidekicktool/ui/PairingFuseScreen.dart';
import 'package:sidekicktool/ui/PairingFluxScreen.dart';

import 'package:sidekicktool/ui/PairingCompletedScreen.dart';
import 'package:sidekicktool/ui/WelcomeScreen.dart';
import 'package:sidekicktool/ui/LiveControlScreen.dart';
import 'package:sidekicktool/ui/SettingsScreen.dart';

const WELCOME_SCREEN_ROUTE = '/welcome';
const PAIRING_SCREEN_ROUTE = '/pairing';
const PAIRING_COMPLETED_SCREEN_ROUTE = '/pairing/completed';

const LIVE_CONTROL_SCREEN_ROUTE = '/live-control';

const SETTINGS_SCREEN_ROUTE = '/settings';

/*const PAIRING_SELECT_DEVICE_SCREEN_ROUTE = "/pairing/select-device";
*/
const PAIRING_FLUX_SCREEN_ROUTE = "/pairing/flux";
const PAIRING_FUSE_SCREEN_ROUTE = "/pairing/fuse";
//const PAIRING_FLARE_SCREEN_ROUTE = '/pairing/flare';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ScopedModel<NavigationModel>(
      model: NavigationModel(),
      child: ScopedModel<BluetoothModel>(
          model: BluetoothModel(),
          child: MaterialApp(
              theme: ThemeData(fontFamily: 'Din'),
              debugShowCheckedModeBanner: false,
              home: WelcomeScreen(),
              //home: LiveControlScreen(),
              //home: PairingCompletedScreen(),
              routes: <String, WidgetBuilder>{
                WELCOME_SCREEN_ROUTE: (BuildContext context) => WelcomeScreen(),
                PAIRING_SCREEN_ROUTE: (BuildContext context) => PairingScreen(),
                PAIRING_COMPLETED_SCREEN_ROUTE: (BuildContext context) =>
                    PairingCompletedScreen(),
                LIVE_CONTROL_SCREEN_ROUTE: (BuildContext context) =>
                    LiveControlScreen(),
                SETTINGS_SCREEN_ROUTE: (BuildContext context) =>
                    SettingsScreen(),
                PAIRING_FLUX_SCREEN_ROUTE: (BuildContext context) =>
                    PairingFluxScreen(),
                PAIRING_FUSE_SCREEN_ROUTE: (BuildContext context) =>
                    PairingFuseScreen(),
              }))));
}
