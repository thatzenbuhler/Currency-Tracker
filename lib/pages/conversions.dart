import 'package:flutter/material.dart';
import 'package:currency_tracker/currencydata.dart';

class ConversionPage extends StatefulWidget {
  final int currencyType;

  ConversionPage({Key key, @required this.currencyType}) : super(key: key);

  @override
  _ConversionPageState createState() => _ConversionPageState();
}

class _ConversionPageState extends State<ConversionPage> {
  String currencyName = "";
  double cur1, cur2, cur3 = 0.0;
  String curName1, curName2, curName3 = "";

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
            Text('$curName1: $cur1', style: TextStyle(fontSize: 30)),
            Text('$curName2: $cur2', style: TextStyle(fontSize: 30)),
            Text('$curName3: $cur3', style: TextStyle(fontSize: 30)),
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
                  print('Changed');
                  setState(() {
                    cur1++;
                  });
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
          // TODO: apply rates here
          cur1 = 0.0;
          cur2 = 0.0;
          cur3 = 0.0;
          break;
        }
      case 2:
        {
          currencyName = "EUR";
          curName1 = "USD";
          curName2 = "CZK";
          curName3 = "HUF";
          // TODO: apply rates here
          cur1 = 0.0;
          cur2 = 0.0;
          cur3 = 0.0;
          break;
        }
      case 3:
        {
          currencyName = "CZK";
          curName1 = "USD";
          curName2 = "EUR";
          curName3 = "HUF";
          // TODO: apply rates here
          cur1 = 0.0;
          cur2 = 0.0;
          cur3 = 0.0;
          break;
        }
      case 4:
        {
          currencyName = "HUF";
          curName1 = "USD";
          curName2 = "EUR";
          curName3 = "CZK";
          // TODO: apply rates here
          cur1 = 0.0;
          cur2 = 0.0;
          cur3 = 0.0;
          break;
        }
    }
  }
}
