import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main(){
  runApp( _MyApp() );
}

class _MyApp extends StatefulWidget {
  const _MyApp({Key? key}) : super(key: key);
  @override
  State<_MyApp> createState() => _MyAppState();
}
class _MyAppState extends State<_MyApp> {
  int leftDiceNumber=1;
  int rightDiceNumber=1;
  void fun(){
    leftDiceNumber=Random().nextInt(6) +1;
    rightDiceNumber=Random().nextInt(6)+1;
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(child: Text('Black & White Dicee Game',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          ),
          backgroundColor: Colors.white,
        ),
        body: Center(
          child: Row(
            children: <Widget>[
              Expanded(
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: (){
                      if (kDebugMode) {
                        print('left');
                        setState(() {
                          fun();
                        }
                        );
                      }
                    },
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  ),
                ),
              ),
              Expanded(
                child:  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                    onPressed: (){
                      if (kDebugMode) {
                        print('Right');
                        setState(() {
                         fun();
                        }
                        );
                      }
                    },
                    child: Image.asset('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
