import 'package:flutter/material.dart';

class EURBase extends StatefulWidget {
  @override
  _EURBaseState createState() => _EURBaseState();
}

class _EURBaseState extends State<EURBase> {
  double usd = 0.0;
  double czk = 0.0;
  double huf = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Amount in EUR"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('USD: $usd', style: TextStyle(fontSize: 20)),
            Text('CZK: $czk', style: TextStyle(fontSize: 20)),
            Text('HUF: $huf', style: TextStyle(fontSize: 20)),
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
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
