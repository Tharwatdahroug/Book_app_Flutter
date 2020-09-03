import 'package:book/book1.dart';
import 'package:book/home.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Books extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return Homepage();
  }
}

class Homepage extends State<Books> {
  final GlobalKey<ScaffoldState> _mainkey = GlobalKey<ScaffoldState>();
  bool sa = true;
  void sarwat(bool val) {
    setState(() {
      sa = val;
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
                  
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => home()));
                },
                onLongPress: () {},
                selected: sa,
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
                  sarwat(sa);
                   
                },
                onLongPress: () {},
              ),
              
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
      backgroundColor: Color.fromRGBO(251, 188, 5, 1),
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
        backgroundColor: Color.fromRGBO(251, 188, 5, 1),
      ),
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 10,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => book1()));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/2.jpg"),
                  ),
                ),
              ),
              SizedBox(
                width: 0,
              ),
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  onPressed: () {
                    print("sarwat");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/3.jpg"),
                  ),
                ),
              ),
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  onPressed: () {
                    print("sarwat");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/5.jpg"),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    print("sarwat");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/6.jpg"),
                  ),
                ),
              ),
              SizedBox(
                width: 0,
              ),
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  onPressed: () {
                    print("sarwat");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/7.jpg"),
                  ),
                ),
              ),
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  onPressed: () {
                    print("sarwat");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/8.jpg"),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 2,
              ),
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    print("sarwat");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/9.jpg"),
                  ),
                ),
              ),
              SizedBox(
                width: 0,
              ),
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  onPressed: () {
                    print("sarwat");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/10.jpg"),
                  ),
                ),
              ),
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  onPressed: () {
                    print("sarwat");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/11.jpg"),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                width: 5,
              ),
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    print("sarwat");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/12.jpg"),
                  ),
                ),
              ),
              SizedBox(
                width: 0,
              ),
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  onPressed: () {
                    print("sarwat");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/13.jpg"),
                  ),
                ),
              ),
              LimitedBox(
                maxHeight: 121,
                maxWidth: 130,
                child: FlatButton(
                  onPressed: () {
                    print("sarwat");
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset("image/14.jpg"),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
