import 'package:flutter/material.dart';

class USDBase extends StatefulWidget {
  @override
  _USDBaseState createState() => _USDBaseState();
}

class _USDBaseState extends State<USDBase> {
  double eur = 0.0;
  double czk = 0.0;
  double huf = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Amount in USD"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('EUR: $eur', style: TextStyle(fontSize: 30)),
            Text('CZK: $czk', style: TextStyle(fontSize: 30)),
            Text('HUF: $huf', style: TextStyle(fontSize: 30)),
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
                  hintStyle: TextStyle(fontSize: 20)
                ),
                onChanged: (String input) {
                  print('Changed');
                  setState(() {
                    eur++;
                    czk++;
                    huf++;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
