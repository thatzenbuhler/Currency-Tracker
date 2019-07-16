import 'package:flutter/material.dart';
import 'package:currency_tracker/currencydata.dart';

class ConversionPage extends StatefulWidget {
  final int currencyType;
  final CurrencyData rateData;

  ConversionPage(
      {Key key, @required this.currencyType, @required this.rateData})
      : super(key: key);

  @override
  _ConversionPageState createState() => _ConversionPageState();
}

class _ConversionPageState extends State<ConversionPage> {
  String currencyName = "";
  double cur1 = 0.0, cur2 = 0.0, cur3 = 0.0;
  double curDisp1 = 0.0, curDisp2 = 0.0, curDisp3 = 0.0;
  String curName1 = "", curName2 = "", curName3 = "";
  double modifier = 0.0;

  @override
  Widget build(BuildContext context) {
    setCurrency(widget.currencyType);
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Amount in $currencyName"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('$curName1: $curDisp1', style: TextStyle(fontSize: 30)),
            Text('$curName2: $curDisp2', style: TextStyle(fontSize: 30)),
            Text('$curName3: $curDisp3', style: TextStyle(fontSize: 30)),
            Container(
              width: 140,
              child: TextField(
                autofocus: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 30),
                textAlign: TextAlign.center,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter Here',
                    hintStyle: TextStyle(fontSize: 20)),
                onChanged: (String input) {
                  if (input.length == 0) {
                    setState(() {
                      curDisp1 = curDisp2 = curDisp3 = 0.0;
                    });
                  }
                  modifier = double.parse(input);
                  if (modifier != null) {
                    setState(() {
                      curDisp1 =
                          double.parse((cur1 * modifier).toStringAsFixed(2));
                      curDisp2 =
                          double.parse((cur2 * modifier).toStringAsFixed(2));
                      curDisp3 =
                          double.parse((cur3 * modifier).toStringAsFixed(2));
                    });
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  void setCurrency(int arg) {
    assert(arg >= 1 && arg <= 4);
    switch (arg) {
      case 1:
        {
          currencyName = "USD";
          curName1 = "EUR";
          curName2 = "CZK";
          curName3 = "HUF";
          cur1 = widget.rateData.rates.eur;
          cur2 = widget.rateData.rates.czk;
          cur3 = widget.rateData.rates.huf;
          break;
        }
      case 2:
        {
          currencyName = "EUR";
          curName1 = "USD";
          curName2 = "CZK";
          curName3 = "HUF";
          cur1 = widget.rateData.rates.usd / widget.rateData.rates.eur;
          cur2 = widget.rateData.rates.czk / widget.rateData.rates.eur;
          cur3 = widget.rateData.rates.huf / widget.rateData.rates.eur;
          break;
        }
      case 3:
        {
          currencyName = "CZK";
          curName1 = "USD";
          curName2 = "EUR";
          curName3 = "HUF";
          cur1 = widget.rateData.rates.usd / widget.rateData.rates.czk;
          cur2 = widget.rateData.rates.eur / widget.rateData.rates.czk;
          cur3 = widget.rateData.rates.huf / widget.rateData.rates.czk;
          break;
        }
      case 4:
        {
          currencyName = "HUF";
          curName1 = "USD";
          curName2 = "EUR";
          curName3 = "CZK";
          cur1 = widget.rateData.rates.usd / widget.rateData.rates.huf;
          cur2 = widget.rateData.rates.eur / widget.rateData.rates.huf;
          cur3 = widget.rateData.rates.czk / widget.rateData.rates.huf;
          break;
        }
    }
  }
}
