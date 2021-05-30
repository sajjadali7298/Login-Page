import 'dart:ui';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Colors.teal,
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('images/4.jpg'), fit: BoxFit.cover)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  backgroundImage: AssetImage(
                    'images/sajjad.jpg',
                  ),
                  radius: 70.0,
                ),
                Text(
                  'Sajjad Ali Mahar',
                  style: TextStyle(
                      color: Color.fromRGBO(153, 148, 251, 5),
                      fontWeight: FontWeight.bold,
                      fontSize: 30.0),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, 5),
                            blurRadius: 20.0,
                            offset: Offset(0, 10))
                      ]),
                  child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.email,
                          color: Colors.teal,
                        ),
                        hintText: 'Enter Your Email',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      onSaved: (String value) {},
                      validator: (String value) {
                        return value.contains('@') ? 'do not use @ char' : null;
                      }),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.all(12.0),
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: [
                        BoxShadow(
                            color: Color.fromRGBO(143, 148, 251, 1),
                            blurRadius: 20.0,
                            offset: Offset(0, 10))
                      ]),
                  child: TextFormField(
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        icon: Icon(
                          Icons.lock,
                          color: Colors.teal,
                        ),
                        hintText: 'Password',
                        hintStyle: TextStyle(color: Colors.grey),
                      ),
                      onSaved: (String value) {},
                      validator: (String value) {
                        return value.contains('@') ? 'do not use @ char' : null;
                      }),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(40, 0, 40, 0),
                  padding: EdgeInsets.all(8.0),
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      gradient: LinearGradient(colors: [
                        Color.fromRGBO(143, 148, 251, 1),
                        Color.fromRGBO(143, 148, 251, 6),
                      ])),
                  child: Center(
                    child: Text(
                      'Login',
                      style: TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(
                  height: 70.0,
                ),
                Text(
                  'Forget Password?',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ],
            )),
      ),
    );
  }
}
