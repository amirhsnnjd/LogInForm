import 'dart:io';
import 'package:flutter_application_1/Reset.dart';
import 'package:flutter_application_1/SignUp.dart';
import 'SignUp.dart';
import 'Success.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: SignIn(),
  ));
}

class SignIn extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets\\images\\img3.jpg"))),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 20, 320, 0),
                child: FloatingActionButton(
                   heroTag: "btn1",
                  onPressed: null , 
                  backgroundColor: Colors.white,
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 30,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 70, 0, 0),
                child: Text(
                  'Welcome\r\nBack',
                  style: TextStyle(
                      fontSize: 45,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      shadows: [
                        Shadow(
                            // bottomLeft
                            offset: Offset(-1.5, -1.5),
                            color: Colors.black),
                        Shadow(
                            // bottomRight
                            offset: Offset(1.5, -1.5),
                            color: Colors.black),
                        Shadow(
                            // topRight
                            offset: Offset(1.5, 1.5),
                            color: Colors.black),
                        Shadow(
                            // topLeft
                            offset: Offset(-1.5, 1.5),
                            color: Colors.black),
                      ],
                      color: Colors.white),
                ),
              ),
              Form(
                  key: _formkey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 80, 0, 0),
                        child: Container(
                          width: 300,
                          height: 60,
                          child: TextFormField(
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            keyboardType: TextInputType.emailAddress,
                            decoration: InputDecoration(
                                hintText: 'email',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.greenAccent, width: 5.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 5.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 5.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 5.0),
                                ),
                                suffixIcon: Icon(
                                  Icons.email,
                                  color: Colors.white,
                                ),
                                suffixIconColor: Colors.white,
                                errorStyle: TextStyle(color: Colors.white),
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            validator: ((value) {
                              if (value!.isEmpty ||
                                  value == null ||
                                  !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                                      .hasMatch(value))
                                return ('email is wrong');
                              else
                                return null;
                            }),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: Container(
                          width: 300,
                          height: 60,
                          child: TextFormField(
                            obscureText: true,
                            style: TextStyle(fontSize: 20, color: Colors.white),
                            keyboardType: TextInputType.visiblePassword,
                            decoration: InputDecoration(
                                hintText: 'Password',
                                focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.greenAccent, width: 5.0),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Colors.white, width: 5.0),
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 5.0),
                                ),
                                focusedErrorBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.red, width: 5.0),
                                ),
                                suffixIcon: Icon(
                                  Icons.key,
                                  color: Colors.white,
                                ),
                                suffixIconColor: Colors.white,
                                errorStyle: TextStyle(
                                  color: Colors.white,
                                ),
                                hintStyle: TextStyle(
                                    fontSize: 20, color: Colors.white)),
                            validator: ((value) {
                              if (value!.isEmpty || value == null)
                                return ('please enter password');
                              else
                                return null;
                            }),
                          ),
                        ),
                      ),
                      TextButton(
                          onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => SignUp()),
                                )
                              },
                          child: Text(
                            "don't have an account?",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 17,
                                fontStyle: FontStyle.italic),
                          )),
                      TextButton(
                          onPressed: () => {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Reset()),
                                )
                              },
                          child: Text(
                            "forgot password",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 17,
                                fontStyle: FontStyle.italic),
                          )),
                      Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: FloatingActionButton(
                           heroTag: "btn2",
                          onPressed: () => {
                            if(_formkey.currentState!.validate()){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SuccessPage()),
                            )}
                          },
                          backgroundColor: Colors.white,
                          tooltip: 'Increment',
                          child: const Icon(
                            Icons.login,
                            color: Colors.black,
                            size: 30,
                          ),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
