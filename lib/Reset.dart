import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/main.dart';

class Reset extends StatelessWidget {
  final _formkey = GlobalKey<FormState>();
  var pass1 = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage("assets\\images\\img3.jpg"))),
          child: ListView(children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 320, 0),
              child: FloatingActionButton(
                 heroTag: "btn2",
                onPressed: () => Navigator.of(context).pop(),
                backgroundColor: Colors.white,
                child: const Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 30,
                ),
              ),
            ),
            //reset password
            Padding(
              padding: const EdgeInsets.fromLTRB(40, 70, 0, 0),
              child: Text(
                'Reset \r\nPassword',
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
            Form(key: _formkey , child: Column(
              children: [
                   //email
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
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      suffixIcon: Icon(
                        Icons.email,
                        color: Colors.white,
                      ),
                      suffixIconColor: Colors.white,
                      errorStyle: TextStyle(color: Colors.white),
                      hintStyle: TextStyle(fontSize: 20, color: Colors.white)),
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
            //new password 
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
                      hintText: 'New Password',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      suffixIcon: Icon(
                        Icons.key,
                        color: Colors.white,
                      ),
                      suffixIconColor: Colors.white,
                      errorStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(fontSize: 20, color: Colors.white)),
                  validator: ((value) {
                    if (value!.isEmpty || value == null)
                      return ('please enter password');
                    else{
                      pass1=value;return null;}
                  }),
                ),
              ),
            ),
            //repeat
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
                      hintText: 'Repeat Password',
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Colors.greenAccent, width: 5.0),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white, width: 5.0),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.red, width: 5.0),
                      ),
                      suffixIcon: Icon(
                        Icons.key,
                        color: Colors.white,
                      ),
                      suffixIconColor: Colors.white,
                      errorStyle: TextStyle(
                        color: Colors.white,
                      ),
                      hintStyle: TextStyle(fontSize: 20, color: Colors.white)),
                  validator: ((value) {
                    
                    if (value!.isEmpty || value == null)
                      return(  'please enter password');
                    else if(value != pass1) return('check your repeat');  
                    else return null;
                  }),
                ),
              ),
            ),
            //button
            Padding(
                        padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                        child: FloatingActionButton(
                           heroTag: "btn1",
                          onPressed: () => {
                            if(_formkey.currentState!.validate()){
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()),
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
            ),)
         ])),
    ));
  }
}
