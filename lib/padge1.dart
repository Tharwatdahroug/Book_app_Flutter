import 'package:book/home.dart';
import 'package:book/login.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class padge1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return padge1d();
  }
}

class padge1d extends State<padge1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      body: ListView(
        children: <Widget>[
          Image.asset("image/298.jpg"),
          SizedBox(
            height: 5,
          ),
          Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Color.fromRGBO(77, 21, 8, 1), width: 4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding:
                      EdgeInsets.only(right: 60, left: 60, bottom: 10, top: 10),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => home()));
                  },
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Text(
                    "Read",
                    style: TextStyle(
                      color: Color.fromRGBO(128, 46, 22, 1),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                decoration: BoxDecoration(
                  border:
                      Border.all(color: Color.fromRGBO(77, 21, 8, 1), width: 4),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  padding:
                      EdgeInsets.only(right: 60, left: 60, bottom: 10, top: 10),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => login()));
                  },
                  color: Color.fromRGBO(255, 255, 255, 1),
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Color.fromRGBO(128, 46, 22, 1),
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              FlatButton(
                onPressed: () {
                  print("object");
                },
                child: Text(
                  "Sign In",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
