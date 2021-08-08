import 'package:demos/router.dart';
import 'package:flutter/material.dart';

void main() {
  AppRouter.setupRouter();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Arab New Zealand',
      initialRoute: '/',
      onGenerateRoute: AppRouter.router.generator,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}
