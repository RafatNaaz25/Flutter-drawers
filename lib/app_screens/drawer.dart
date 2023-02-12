// ignore_for_file: no_logic_in_create_state, use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class MyApp1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return (MyState());
  }
}

class MyState extends State<MyApp1> {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          drawer: Drawer(
            child: Builder(builder: (context) {
              return (ListView(
                children: [
                  DrawerHeader(
                    decoration: BoxDecoration(
                      color: Colors.blue,
                    ),
                      child: Text(
                    "Header Info",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )),
                  ListTile(
                    onTap: (){
                      Fluttertoast.showToast(
                        msg: "You selected Settings"
                      );
                      Navigator.pop(context);
                    },
                    title: Text("Settings"),
                    leading: Icon(Icons.settings),
                  ),
                  ListTile(
                    onTap: (){
                      Fluttertoast.showToast(
                        msg: "You selected Email"
                      );
                      Navigator.pop(context);
                    },
                    title: Text("Email"),
                    leading: Icon(Icons.email),
                  ),
                  ListTile(
                     onTap: (){
                      Fluttertoast.showToast(
                        msg:"Exit"
                      );
                      Navigator.pop(context);
                    },
                    title: Text("Back"),
                    leading: Icon(Icons.backspace),
                  ),
                ],
              ));
            }),
          ),
          appBar: AppBar(
            title: Text("Drawer Demo "),
          ),
        )));
  }
}
