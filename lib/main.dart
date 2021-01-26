import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sewaLapak/pages/splash.dart';
import 'package:sewaLapak/providers/space_provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SpaceProvider(),
      child: MaterialApp(
        home: SplashPage(),
      ),
    );
  }
}
