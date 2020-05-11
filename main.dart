import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(ButtonPosition());
}
        blue(){
          Fluttertoast.showToast(
            msg:"This is a blue toast",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.blue,
            textColor: Colors.white, 
            );
        }
        
        red(){
          Fluttertoast.showToast(
            msg:"This is a red toast",
            toastLength: Toast.LENGTH_SHORT,
            gravity: ToastGravity.BOTTOM,
            timeInSecForIosWeb: 1,
            backgroundColor: Colors.red,
            textColor: Colors.white, 
            );
        }
class ButtonPosition extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Custom Toast'
          ),
          centerTitle: true,
        ) ,

 
            body: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  color: Colors.blue,
                  onPressed:() {
                    blue();
                 }, 
                  child : Text(
                    'Blue',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white
                 
                    ),

                  

                  )
                ),
                RaisedButton(
                 color: Colors.red,
                  onPressed:() {
                    red();
                 }, 
                  child : Text(
                    'Red',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.white
                 
                    ),

                  

                  )
                )
                ],
              )));
        }
        }



