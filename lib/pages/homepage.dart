import 'package:flutter/material.dart';
import 'package:currency_tracker/pages/conversions.dart';
import 'package:currency_tracker/currencydata.dart';

class HomePage extends StatelessWidget {
  final Future<CurrencyData> rateData;

  HomePage({Key key, @required this.rateData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrencyData rates;
    String date;
    this.rateData.then((result) {
      rates = result;
      date = result.date;
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Currency Tracker'),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Choose Base Currency:', style: TextStyle(fontSize: 20)),
              RaisedButton(
                child: Text(
                  'USD',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ConversionPage(currencyType: 1, rateData: rates)),
                  );
                },
              ),
              RaisedButton(
                child: Text(
                  'EUR',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ConversionPage(currencyType: 2, rateData: rates)),
                  );
                },
              ),
              RaisedButton(
                child: Text(
                  'CZK',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ConversionPage(currencyType: 3, rateData: rates)),
                  );
                },
              ),
              RaisedButton(
                child: Text(
                  'HUF',
                  style: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            ConversionPage(currencyType: 4, rateData: rates)),
                  );
                },
              ),
              Text('Rates: ${(date != null) ? date : "N/A"}',
                  style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
