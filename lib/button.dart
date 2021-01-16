import 'package:flutter/material.dart';

class ColorsButton extends StatefulWidget {
  @override
  _ColorsButtonState createState() => _ColorsButtonState();
}

class _ColorsButtonState extends State<ColorsButton> {
  List<Color> mycolor = [
    Colors.purpleAccent[100],
    Colors.lightBlueAccent,
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.25,
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.all(Radius.circular(20)), 
             gradient:    LinearGradient(
                  colors: mycolor,
                  begin: Alignment.topLeft,
                  end: Alignment.centerRight),
            ),
            child: RaisedButton(
              
              elevation: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('Log In '),
                  Icon(Icons.login),
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              onPressed: () {},
              color: Colors.transparent,
            ),
          ),
          Container(
            height: 50,
            width: 200,
            decoration: BoxDecoration(
              borderRadius:BorderRadius.all(Radius.circular(20)), 
             gradient:    LinearGradient(
                  colors: mycolor,
                    begin: Alignment.topLeft,
                  end: Alignment.centerRight),
            ),
            child: RaisedButton(
              elevation: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text('new '),
                  Icon(Icons.account_box),
                ],
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              onPressed: () {},
              color: Colors.transparent
            ),
          ),
        ],
      ),
    );
  }
}
