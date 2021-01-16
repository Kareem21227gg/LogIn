import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  String contain;
  Radius x ,y;
  InputWidget({
    Key key,
    this.contain,
    this.x,
    this.y,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 40,),
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        height: MediaQuery.of(context).size.height * 0.1,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left:8.0,bottom: 4),
              child: Text(contain ,style: TextStyle(
                    color: Colors.black54,
                    inherit: false,
                    fontSize: 16,
                  ),),
            ),
            Material(
              
              elevation: 4,
              color: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topRight: x,bottomRight: y,)),
              child: Padding(
                padding: EdgeInsets.only(left: 10, right: 20),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
