import 'dart:ui';
import 'button.dart';
import 'input.dart';
import 'package:flutter/material.dart';
import 'the thing.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Color> myColors2 = [
    Colors.white,
    Colors.white,
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: myColors2,
              begin: Alignment.topLeft,
              end: Alignment.bottomLeft)),
      child: Padding(
        padding: const EdgeInsets.only(
          right: 8.0,
        ),
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height *0.35,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InputWidget(
                    x: Radius.circular(500),
                    y: Radius.zero,
                    contain: 'Email@something.com',
                  ),
                  Padding(
                    padding: const EdgeInsets.only( top: 20,bottom: 16.0),
                    child: InputWidget(
                      x: Radius.zero,
                      y: Radius.circular(500),
                      contain: '*PassWord*',
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Material(
                      color: Colors.transparent,
                      child: CheckboxListTile(
                        title: Text(
                          'Remember Me',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                          ),
                        ),
                        value: false,
                        onChanged: (bool value) {},
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top:MediaQuery.of(context).size.height * 0.01,
             left:MediaQuery.of(context).size.width * 0.1 ,
              child: MyButton(
                conatin: '',
                height: 170,
                width: 127,
                end: Alignment.bottomLeft,
                start: Alignment.topLeft,
              ),
            ),
            Align(
              alignment: Alignment.topCenter,
              child: MyButton(
                conatin: '',
                height: 250,
                width: 187,
                end:Alignment.bottomRight,
                start: Alignment.topRight,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.7,
              child: ColorsButton(),
            ),
          ],
        ),
      ),
    );
  }
}
