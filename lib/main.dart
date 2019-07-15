// Tyler Hatzenbuhler

import 'package:flutter/material.dart';
import 'package:currency_tracker/pages/homepage.dart';
import 'package:currency_tracker/currencydata.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Currency Tracker',
      home: HomePage(),
    );
  }
}