import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;
  var _makingMoney = "Making Money";

  void _rainMoney() {
    setState(() {
      //Testing methods to fade the text on every press.
      _moneyCounter = _moneyCounter + 100;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make Me Money"),
        backgroundColor: _moneyCounter > 2000 ? Colors.greenAccent : Colors.lightBlueAccent,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Padding(
              padding: EdgeInsets.all(8.0),
              child: new Center(
                child: new Text(
                  "Get That Money",
                  style: new TextStyle(
                    color: _moneyCounter > 2000 ? Colors.greenAccent : Colors.lightBlueAccent,
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                  ),
                ),
              ),
            ),
            new Expanded(
                child: new Center(
              child: new Text('\$$_moneyCounter',
                  style: new TextStyle(
                    color: _moneyCounter > 2000 ? Colors.greenAccent : Colors.lightBlueAccent,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w800,
                  )),
            )),
            new Expanded(
              child: new Center(
                child: new Text(
                  '$_makingMoney',
                  style: new TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.w900,
                    color: _moneyCounter > 2000 ? Colors.greenAccent : Colors.lightBlueAccent,
                  ),
                ),
              ),
            ),
            new Expanded(
                child: new Center(
              child: new RaisedButton(
                color: _moneyCounter > 2000 ? Colors.greenAccent : Colors.lightBlueAccent,
                textColor: Colors.white,
                onPressed: _rainMoney,
                child: new Text(
                  "Let it rain",
                  style: new TextStyle(
                    fontSize: 40.0,
                  ),
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
