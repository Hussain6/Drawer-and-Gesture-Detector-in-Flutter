import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("Login")),
            backgroundColor: Colors.amber,
          ),
          body: Column(
            children: [
              SizedBox(height: 100),
              Container(
                height: 20,
                width: 130,
                alignment: Alignment.center,
                color: Colors.amber,
                child: Text("Email / Username",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: "Enter Your Email / Username",
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 10),
              Container(
                height: 20,
                width: 100,
                alignment: Alignment.center,
                color: Colors.amber,
                child: Text("Password",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                      color: Colors.black,
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                obscureText: true,
                obscuringCharacter: "*",
                decoration: InputDecoration(
                  hintText: "Enter Your Password",
                  border: OutlineInputBorder(),
                ),
              ),
              Container(
                  width: 200,
                  child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "Login",
                        style: TextStyle(color: Colors.black),
                      ))),
              SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Text("Back"))
            ],
          ),
        ));
  }
}
