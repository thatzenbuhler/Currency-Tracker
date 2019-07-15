import 'package:flutter/material.dart';
import 'package:currency_tracker/pages/conversions.dart';
import 'package:currency_tracker/currencydata.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                        builder: (context) => ConversionPage(currencyType: 1)),
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
                        builder: (context) => ConversionPage(currencyType: 2)),
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
                        builder: (context) => ConversionPage(currencyType: 3)),
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
                        builder: (context) => ConversionPage(currencyType: 4)),
                  );
                },
              ),
              Text('Rates: DATE HERE', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
