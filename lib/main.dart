import 'package:flutter/material.dart';
import 'package:modu8config/configure.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'modu8 configurator',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: ConfigurePage(title: 'modu8 Configurator'),
    );
  }
}
