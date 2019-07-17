import 'package:flutter/material.dart';
import 'package:currency_tracker/pages/conversions.dart';
import 'package:currency_tracker/currencydata.dart';

class HomePage extends StatelessWidget {
  final Future<CurrencyData> rateData;

  HomePage({Key key, @required this.rateData}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    CurrencyData rates;
    this.rateData.then((result) {
      rates = result;
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Currency Tracker'),
          backgroundColor: Colors.blueGrey,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text('Choose Base Currency:', style: TextStyle(fontSize: 20)),
              ButtonTheme(
                buttonColor: Colors.green,
                minWidth: 180,
                height: 70,
                child: RaisedButton(
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
              ),
              ButtonTheme(
                buttonColor: Colors.lightBlue,
                minWidth: 180,
                height: 70,
                child: RaisedButton(
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
              ),
              ButtonTheme(
                buttonColor: Colors.redAccent,
                minWidth: 180,
                height: 70,
                child: RaisedButton(
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
              ),
              ButtonTheme(
                buttonColor: Colors.lightGreen,
                minWidth: 180,
                height: 70,
                child: RaisedButton(
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
