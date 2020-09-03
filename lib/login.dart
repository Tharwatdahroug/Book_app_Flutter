import 'package:book/home.dart';
import 'package:book/padge1.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class login extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return  loginpadge();
  }

}
class loginpadge extends State<login>{
 final GlobalKey<FormState> formState = GlobalKey<FormState>();
  String _emila, _password;
  login() {
    final formData = formState.currentState;
    if (formData.validate()) {
       Navigator.push(context,
        MaterialPageRoute(builder: (context) => home()));
    } else {
    }
  }

  var box = false;
  void box1(bool val) {
    setState(() {
      box = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color.fromRGBO(172, 62, 59, 1),
        //   elevation: 0.0,
        // ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
        body: ListView(
          children: <Widget>[
            Row(
              children: <Widget>[
                FlatButton.icon(
                  padding: EdgeInsets.only(left: 0.0),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => padge1()));
                  },
                  icon: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                  ),
                  label: Text(
                    "Back",
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                )
              ],
            ),
            Container(),
            Form(
              key: formState,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 0.0,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Image.asset(
                            "image/298.jpg",
                            width: 150,
                            height: 150,
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Text(
                            "BOOK & READING",
                            style: TextStyle(
                      color: Color.fromRGBO(128, 46, 22, 1),
                              fontSize: 30.0,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 25.0,
                          ),
                          Card(
                      color: Color.fromRGBO(128, 46, 22, 1),
                            elevation: 5,
                            child: TextFormField(
                              cursorColor: Colors.black,
                              keyboardType: TextInputType.emailAddress,
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                prefixStyle: TextStyle(color: Colors.white),
                                hintText: "Enter your Email",
                                hintStyle: TextStyle(color: Colors.white),
                              ),
                              validator: (val) {
                                if (val.isEmpty) {
                                  return 'Please Enter Your Email';
                                }
                              },
                              onSaved: (val) => _emila = val,
                            ),
                          ),
                          SizedBox(
                            height: 20.0,
                          ),
                          Card(
                      color: Color.fromRGBO(128, 46, 22, 1),
                              elevation: 5,
                              child: TextFormField(
                                cursorColor: Colors.black,
                                obscureText: true,
                                keyboardType: TextInputType.text,
                                style: TextStyle(color: Colors.white),
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.lock,
                                    color: Colors.white,
                                  ),
                                  prefixStyle: TextStyle(color: Colors.white),
                                  hintText: "Enter your password",
                                  hintStyle: TextStyle(color: Colors.white),
                                ),
                                validator: (val) {
                                  if (val.isEmpty) {
                                    return 'Enter Your Password';
                                  } else if (val.length < 3) {
                                    return 'Your Password need to be atleast 4 char';
                                  }
                                },
                                onSaved: (val) => _password = val,
                              )),
                          Container(
                            alignment: Alignment.centerRight,
                            child: RaisedButton(
                              onPressed: () => print("for"),
                              padding: EdgeInsets.only(right: 0.0),
                              child: Text(
                                "Forget password?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.w200),
                              ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                              elevation: 0.0,
                            ),
                          ),
                          Container(
                            // decoration: BoxDecoration(
                            //   border:
                            //       Border.all(color: Colors.yellow, width: 4),
                            //   borderRadius: BorderRadius.circular(20),
                            // ),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20)
                              ),
                              elevation: 0.0,
                              padding: EdgeInsets.only(
                                  right: 25, left: 25, bottom: 10, top: 10),
                              hoverColor: Colors.white,
                              onPressed: () => login(),
                      color: Color.fromRGBO(128, 46, 22, 1),
                              child: Text(
                                "DONE",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }

}