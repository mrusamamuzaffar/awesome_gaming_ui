import 'package:diagon_test_ui/screens/home/home_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const DiagonApp());
}

class DiagonApp extends StatelessWidget {
  const DiagonApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      title: 'diagon test ui',
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
