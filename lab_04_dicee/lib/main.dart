import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.lightGreen,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.lightGreen,
          centerTitle: true,
        ),
        body: Dicee(),
      ),
    );
  }
}

class Dicee extends StatelessWidget {
  var leftDiceNumber = 5;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Padding(
              padding: EdgeInsets.only(left: 16, right: 8),
              child: TextButton(
                  onPressed: (){
                    print('Nút số 1');
                  },
                  child: Image.asset('images/dice$leftDiceNumber.png')),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
                padding: EdgeInsets.only(left: 8, right: 16),
                child: TextButton(
                    onPressed: (){
                      print('Nút số 2');
                    },
                    child: Image.asset('images/dice1.png'))),
          ),
        ],
      ),
    );
  }
}
