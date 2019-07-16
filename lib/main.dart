// Tyler Hatzenbuhler

import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
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
    throw Exception("Failed to retrieve exchange rate data.");
  }
}

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Currency Tracker",
      home: HomePage(rateData: fetchPost()),
    );
  }
}
