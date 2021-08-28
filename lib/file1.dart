import 'package:flutter/material.dart';

import 'ok.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: Text("Home"),
      ),
      body: Center(
        child: (Container(
          height: 300,
          width: 300,
          color: Colors.amber,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Tap on Drawer to Check Functionality and then Tap Login for gesture Dectector",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        )),
      ),
      drawer: (Drawer(
          child: ListView(
        children: [
          DrawerHeader(
            child: Container(
              child: Image.network(
                "https://media.istockphoto.com/vectors/flag-ribbon-welcome-old-school-flag-banner-vector-id1223088904?k=20&m=1223088904&s=612x612&w=0&h=b_ilJpFTSQbZeCrZusHRLEskmfiONWH0hFASAJbgz9g=",
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: ListTile(
              leading: CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage(
                    "https://img.icons8.com/cotton/2x/login-rounded-right.png"),
              ),
              title: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyApp2()),
                    );
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  )),
            ),
          )
        ],
      ))),
    );
  }
}
