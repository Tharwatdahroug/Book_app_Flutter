import 'package:book/BOOKS.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class book1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return bookpadge();
  }
}

class bookpadge extends State<book1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromRGBO(251, 188, 5, 1),
      appBar: AppBar(
        title: Text(
          "Book Shop",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Books()));
          },
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.black,
                size: 30,
              ),
              onPressed: () {
                print("search");
              })
        ],
        centerTitle: true,
        backgroundColor: Color.fromRGBO(251, 188, 5, 1),
      ),
      body: Container(
        color: Color.fromRGBO(251, 188, 5, 1),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              height: 20,
              // width: 10,
            ),
            Expanded(
              child: Container(
                //  width: 500,
                //  height: 500,
                // margin: EdgeInsets.all(400),
                // decoration: BoxDecoration(
                //     border: Border.all(color: Colors.white, width: 4)),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    LimitedBox(
                      maxWidth: 150,
                      maxHeight: 150,
                      child: Image.asset(
                        "image/2.jpg",
                        width: 150,
                        height: 150,
                      ),
                    ),
                    Container(
                        width: 300,
                        height: 300,
                        // decoration: BoxDecoration(
                        //     border: Border.all(color: Colors.white, width: 4)),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: <Widget>[
                            Text(
                              "1984 ",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 34),
                            ),
                            Text(
                              "Written more than 70 years ago, 1984 was George Orwell’s chilling prophecy about the future. And while 1984 has come and gone, his dystopian vision of a government that will do anything to control the narrative is timelier than ever...",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 10),
                            ),
                            Container(
                              margin: EdgeInsets.only(bottom: 0),
                              // padding: EdgeInsets.all(0),
                              width: 93,
                              height: 93,
                              // decoration: BoxDecoration(
                              //     border: Border.all(
                              //         color: Colors.white, width: 4)),
                              child: Row(
                                children: <Widget>[
                                  // Image.asset(
                                  //   "image/15.png",
                                  //   width: 120,
                                  //   height: 120,
                                  // ),
                                  SizedBox(
                                    width: 2,
                                  ),
                                  Text(
                                    "€9.99",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 30),
                                  ),
                                  SizedBox(
                                    width: 50,
                                  ),
                                  RaisedButton(
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(40)
                                            ),
                                    padding: EdgeInsets.all(10),

                                    color: Colors.red,
                                    splashColor: Colors.red,
                                    onPressed: () {},
                                    child: Text(
                                      "Buy",
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 30,
                                          color: Colors.white),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ))
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: ListView(
                  children: <Widget>[
                    SizedBox(
                      height: 25,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "• Nominated as one of America’s best-loved novels by PBS’s The Great American Read •",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "“The Party told you to reject the evidence of your eyes and ears. It was their final, most essential command.”"),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                        "Winston Smith toes the Party line, rewriting history to satisfy the demands of the Ministry of Truth. With each lie he writes, Winston grows to hate the Party that seeks power for its own sake and persecutes those who dare to commit thoughtcrimes. But as he starts to think for himself, Winston can’t escape the fact that Big Brother is always watching...A startling and haunting novel, 1984 creates an imaginary world that is completely convincing from start to finish. No one can deny the novel’s hold on the imaginations of whole generations, or the power of its admonitions—a power that seems to grow, not lessen, with the passage of time."),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
