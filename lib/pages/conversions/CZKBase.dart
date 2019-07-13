import 'package:flutter/material.dart';

class CZKBase extends StatefulWidget {
  @override
  _CZKBaseState createState() => _CZKBaseState();
}

class _CZKBaseState extends State<CZKBase>{
  double usd = 0.0;
  double eur = 0.0;
  double huf = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Enter Amount in CZK"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Text('USD: $usd', style: TextStyle(fontSize: 20)),
            Text('EUR: $eur', style: TextStyle(fontSize: 20)),
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
