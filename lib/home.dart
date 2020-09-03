import 'package:book/BOOKS.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return homepadeg();
  }
}

class homepadeg extends State<home> {
  final GlobalKey<ScaffoldState> _mainkey = GlobalKey<ScaffoldState>();
  bool ssa = true;
  void ssarwat(bool val) {
    setState(() {
      ssa = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _mainkey,
      drawer: Drawer(
        elevation: 0.0,
        child: Container(
          color: Color.fromRGBO(255, 255, 255, 1),
          child: ListView(
            children: <Widget>[
              Image.asset("image/20.png"),
              ListTile(
                title: Text(
                  "Home",
                  // textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                leading: Icon(
                  Icons.home,
                  size: 25,
                ),
                onTap: () {
                  ssarwat(ssa);
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => sarwat3()));
                },
                onLongPress: () {},
                selected: ssa,
              ),
              ListTile(
                title: Text(
                  "Top 10",
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.bookmark_border,
                  size: 25,
                ),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text(
                  "Books",
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.book,
                  size: 25,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Books()));
                },
                onLongPress: () {},
              ),
              // ListTile(
              //   title: Text(
              //     "مطاعمنا",
              //     style: TextStyle(fontSize: 20),
              //   ),
              //   trailing: Icon(
              //     Icons.location_on,
              //     size: 25,
              //   ),
              //   onTap: () {},
              //   onLongPress: () {},
              // ),
              ListTile(
                title: Text(
                  "Arithmetic",
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.person,
                  size: 25,
                ),
                onTap: () {},
                onLongPress: () {},
              ),
              Divider(
                color: Colors.black,
                height: 3,
              ),
              ListTile(
                title: Text(
                  "common questions",
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.live_help,
                  size: 25,
                ),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text(
                  "From the bookstore",
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.new_releases,
                  size: 25,
                ),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text(
                  "Contact us",
                  // textAlign: TextAlign.right,
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.markunread,
                  size: 25,
                ),
                onTap: () {},
                onLongPress: () {},
              ),
              ListTile(
                title: Text(
                  "Region and language",
                  style: TextStyle(fontSize: 20),
                ),
                leading: Icon(
                  Icons.language,
                  size: 25,
                ),
                onTap: () {},
                onLongPress: () {},
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      appBar: AppBar(
        elevation: 0.0,
        title: Text(
          "BOOK STORE",
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 30,
            color: Colors.black,
          ),
          onPressed: () {
            _mainkey.currentState.openDrawer();
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
        // backgroundColor: Color.fromRGBO(251, 188, 5, 1),
        backgroundColor: Color.fromRGBO(255, 255, 255, 1),
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Expanded(
              child: Container(
                // padding: EdgeInsets.all(2),
                // decoration: BoxDecoration(
                //     // color: Colors.white,
                //     borderRadius: BorderRadius.circular(30)),

                child: ClipRRect(
                  // borderRadius: BorderRadius.circular(10),
                  child: Image.asset("image/30.jpg"),
                ),
              ),
            ),
            // SizedBox(
            //   height: 1,
            // ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 2,
                ),
                Text(
                  "Top 10",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(
                  width: 160,
                ),
                FlatButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Books()));
                  },
                  child: Text(
                    "View All",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(15),
                width: 450,
                decoration: BoxDecoration(
                    // color: Colors.tealAccent,
                    borderRadius: BorderRadius.circular(15)),
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    FlatButton(
                      padding: EdgeInsets.all(0),
                      onPressed: null,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset("image/10.jpg"),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("image/11.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("image/7.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("image/12.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("image/13.jpg"),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.asset("image/14.jpg"),
                    ),
                  ],
                ),
              ),
            ),
            // SizedBox(
            //   height: 30,
            // ),
            // Expanded(
            //   child:Row(

            //   )

            // ),
          ],
        ),
      ),
    );
  }
}
