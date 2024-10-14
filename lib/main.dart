import 'package:flutter/material.dart';
//essential Material Design components from the Flutter framework,
import 'package:go_router/go_router.dart';
//used for managing navigation within the Flutter application.
import 'package:sign_in/pages/home_screen.dart';
//represents the initial screen of the application.
import 'package:sign_in/pages/signed_in.dart'; //SignedIn widget

void main() {
  runApp(MyApp());
} // It creates and runs an instance of the MyApp widget

class MyApp extends StatelessWidget {
  //defines a stateless widget named MyApp. Stateless widgets are immutable and don't maintain state.
  MyApp({Key? key}) : super(key: key);
  //The Key? key parameter is optional and can be used for identifying widgets within the tree.

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    ); //This is the build method of the MyApp widget,
    //responsible for constructing the user interface.
    //It returns a MaterialApp.router widget
    //which integrates with the go_router package for navigation.
    //The routerConfig property is set to _router, an instance of GoRouter defined.
  }

  final _router = GoRouter(
    //This creates an instance of GoRouter and defines its navigation routes.

    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => HomeScreen(),
      ),
      GoRoute(
        path: '/signed_in',
        builder: (context, state) => SignedIn(
          userName: state.extra as String,
        ),
      ),
    ],
  );
}
