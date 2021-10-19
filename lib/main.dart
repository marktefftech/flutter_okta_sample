import 'package:flutter/material.dart';
import 'package:phoenix/providers/OktaProvider.dart';
import 'package:phoenix/screens/LoginScreen.dart';
import 'package:phoenix/screens/MainScreen.dart';
import 'package:phoenix/screens/SplashScreen.dart';
import 'package:phoenix/screens/LandingScreen.dart';
import 'package:phoenix/services/AuthService.dart';

void main() => runApp((MyApp()));

class MyApp extends StatelessWidget {

  static const appBarColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return AuthProvider(
      authService: new AuthOktaService(),
      child: MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(),
        routes: {
          SplashScreen.routeName: (ctx) => SplashScreen(),
          MainScreen.routeName: (ctx) => MainScreen(),
          LoginScreen.routeName: (ctx) => LoginScreen(),
          LandingScreen.routeName: (ctx) => LandingScreen(),
        },
      ),
    );
  }
}
