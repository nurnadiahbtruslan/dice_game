import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          title: Text('DICE ROLL!!'),
          backgroundColor: Colors.deepOrange,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  int generateRandom() {
    return Random().nextInt(6) + 1;
  }

  void setRandomDiceNumber() {
    setState(() {
      leftDiceNumber = generateRandom();
      rightDiceNumber = generateRandom();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/diceeLogo.png',
              scale: 0.8,
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset(
                  'images/dice$leftDiceNumber.png',
                  width: 150.0,
                ),
                Image.asset(
                  'images/dice$rightDiceNumber.png',
                  width: 150.0,
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                FlatButton(
                  padding: EdgeInsets.all(16.0),
                  color: Colors.orange,
                  onPressed: setRandomDiceNumber,
                  child: Text(
                    'TAP THIS TO ROLL!',
                    style: TextStyle(
                        fontFamily: '',
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
