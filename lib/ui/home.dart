import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;
  bool _visible = true;

  void _rainMoney() {
    setState(() {
      _moneyCounter = _moneyCounter + 100;
      //Testing methods to fade the text on every press.
      if (_moneyCounter >= 100) {
        _visible = !_visible;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Make Me Money"),
        backgroundColor: Colors.lightBlueAccent,
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
                    color: Colors.lightBlueAccent,
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
                    color: Colors.lightBlueAccent,
                    fontSize: 50.0,
                    fontWeight: FontWeight.w800,
                  )),
            )),
            new Expanded(
              child: new AnimatedOpacity(
                  duration: Duration(microseconds: 5000),
                  opacity: _visible ? 0.0 : 1.0,
                  child: new Center(
                    child: new Text(
                      "making money",
                      style: new TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.lightBlueAccent,
                      ),
                    ),
                  )),
            ),
            new Expanded(
                child: new Center(
              child: new FlatButton(
                color: Colors.lightBlueAccent,
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
