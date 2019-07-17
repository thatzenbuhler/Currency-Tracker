// Tyler Hatzenbuhler

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:currency_tracker/pages/homepage.dart';
import 'package:currency_tracker/currencydata.dart';
import 'package:http/http.dart' as http;

// Retrieve exchange rate data from API
Future<CurrencyData> fetchPost() async {
  final response =
      await http.get("https://api.exchangeratesapi.io/latest?base=USD");

  if (response.statusCode == 200) {
    return CurrencyData.fromJson(json.decode(response.body));
  } else {
    return CurrencyData(rates: Rates(usd: 1.0, eur: 0.8910, czk: 22.79, huf: 290.34), date: '2019-07-16 (Offline)');
  }
}

void main() => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown
    ]);
    return MaterialApp(
      title: "Currency Tracker",
      home: HomePage(rateData: fetchPost()),
    );
  }
}
