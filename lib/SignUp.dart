import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/main.dart';
import 'Success.dart';

class SignUp extends StatefulWidget {
  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formkey = GlobalKey<FormState>();
  bool drp1 =false;
  bool drp2 =false;
  var dropdownValue = 'choose security question';
  var dropdownValue2 = 'choose security question';

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
                onPressed: () => Navigator.of(context).pop(),
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
                'Sign Up',
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
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 5.0),
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
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
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
                  //name
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      width: 300,
                      height: 60,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: 'name',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 5.0),
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
                              Icons.person,
                              color: Colors.white,
                            ),
                            suffixIconColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.white,
                            ),
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        validator: ((value) {
                          if (value!.isEmpty ||
                              value == null ||
                              value.characters.length < 8)
                            return ('name should be more than 8 charachters');
                          else
                            return null;
                        }),
                      ),
                    ),
                  ),
                  //lastname
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      width: 300,
                      height: 60,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: 'lastname',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 5.0),
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
                              Icons.person_add,
                              color: Colors.white,
                            ),
                            suffixIconColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.white,
                            ),
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        validator: ((value) {
                          if (value!.isEmpty ||
                              value == null ||
                              value.characters.length < 10)
                            return ('last name should be more than 10 characters');
                          else
                            return null;
                        }),
                      ),
                    ),
                  ),
                  //age
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      width: 300,
                      height: 60,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                            hintText: 'age',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 5.0),
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
                              Icons.date_range,
                              color: Colors.white,
                            ),
                            suffixIconColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.white,
                            ),
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        validator: ((value) {
                          if (value!.isEmpty ||
                              value == null ||
                              !RegExp(r"^[1-9][0-9]+").hasMatch(value))
                            return ('please enter your age');
                          else
                            return null;
                        }),
                      ),
                    ),
                  ),
                  //province
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      width: 300,
                      height: 60,
                      child: TextFormField(
                       
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: 'province',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 5.0),
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
                              Icons.map,
                              color: Colors.white,
                            ),
                            suffixIconColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.white,
                            ),
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        validator: ((value) {
                          if (value!.isEmpty || value == null)
                            return ('please enter province');
                          else
                            return null;
                        }),
                      ),
                    ),
                  ),
                  //city
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      width: 300,
                      height: 60,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: 'city',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 5.0),
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
                              Icons.location_city,
                              color: Colors.white,
                            ),
                            suffixIconColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.white,
                            ),
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        validator: ((value) {
                          if (value!.isEmpty || value == null)
                            return ('please enter city');
                          else
                            return null;
                        }),
                      ),
                    ),
                  ),
                  //password
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
                              borderSide:
                                  BorderSide(color: Colors.white, width: 5.0),
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
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        validator: ((value) {
                          if (value!.isEmpty || value == null)
                            return ('please enter password');
                          else
                            return null;
                        }),
                      ),
                    ),
                  ),
                  //dropdown1
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        width: 300,
                        height: 60,
                        child: DropdownButtonFormField<String>(
                          value: dropdownValue,
                          decoration: InputDecoration(
                              hintText: 'security question',
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 5.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 5.0),
                              ),
                              suffixIconColor: Colors.white,
                              errorStyle: TextStyle(
                                color: Colors.white,
                              ),
                              hintStyle:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          dropdownColor: Colors.black,
                          icon: const Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                          elevation: 16,
                          
                          style: const TextStyle(
                              color: Colors.white, fontSize: 17),
                          validator: (dropdownValue) {
                            if (dropdownValue == 'choose security question' ||
                                dropdownValue2 == dropdownValue){
                              setState(() {
                                drp1=false;
                              });
                              return 'choose different items!';}
                            else{
                              
                              return null;}
                          },
                          onChanged: (String? newValue) {
                            setState(() {
                              drp1 = true;
                              dropdownValue = newValue!;
                            });
                          },
                          items: <String>[
                            'choose security question',
                            'what\'s your first teacher\'s name?',
                            'what\'s your favorite color?',
                            'what\'s your favorite team?',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      )),
                  //asnwer1
                  Visibility(
              child:Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      width: 300,
                      height: 60,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: 'answer',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 5.0),
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
                              Icons.question_mark,
                              color: Colors.white,
                            ),
                            suffixIconColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.white,
                            ),
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        validator: ((value) {
                          if (value!.isEmpty ||
                              value == null)
                            return ('enter an answer');
                          else
                            return null;
                        }),
                      ),
                    ),
                  ),
              visible: drp1,
            ),
                  //dropdown2
                  Padding(
                      padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                      child: Container(
                        width: 300,
                        height: 60,
                        child: DropdownButtonFormField<String>(
                          value: dropdownValue2,
                          decoration: InputDecoration(
                              hintText: 'security question',
                              focusedBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5.0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5.0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 5.0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.red, width: 5.0),
                              ),
                              suffixIconColor: Colors.white,
                              errorStyle: TextStyle(
                                color: Colors.white,
                              ),
                              hintStyle:
                                  TextStyle(fontSize: 20, color: Colors.white)),
                          dropdownColor: Colors.black,
                          enableFeedback: true,
                          icon: const Icon(
                            Icons.arrow_downward,
                            color: Colors.white,
                          ),
                          elevation: 16,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 17),
                          validator: (dropdownValue2) {
                            if (dropdownValue2 == 'choose security question' ||
                                dropdownValue2 == dropdownValue){
                              setState(() {
                                drp2=false;
                              });
                              return 'choose different items!';}
                            else
                              return null;
                          },
                          onChanged: (String? newValue) {
                            setState(() {
                              drp2=true;
                              dropdownValue2 = newValue!;
                            });
                          },
                          items: <String>[
                            'choose security question',
                            'what\'s your first teacher\'s name?',
                            'what\'s your favorite color?',
                            'what\'s your favorite team?',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(value),
                            );
                          }).toList(),
                        ),
                      )),
                  //answer2
                  Visibility(
              child:Padding(
                    padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: Container(
                      width: 300,
                      height: 60,
                      child: TextFormField(
                        style: TextStyle(fontSize: 20, color: Colors.white),
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                            hintText: 'answer',
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: Colors.greenAccent, width: 5.0),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: Colors.white, width: 5.0),
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
                              Icons.question_mark,
                              color: Colors.white,
                            ),
                            suffixIconColor: Colors.white,
                            errorStyle: TextStyle(
                              color: Colors.white,
                            ),
                            hintStyle:
                                TextStyle(fontSize: 20, color: Colors.white)),
                        validator: ((value) {
                          if (value!.isEmpty ||
                              value == null)
                            return ('enter an answer');
                          else
                            return null;
                        }),
                      ),
                    ),
                  ),
              visible: drp2,
            ),
                  //button
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 40, 0, 0),
                    child: FloatingActionButton(
                       heroTag: "btn2",
                      onPressed: () => {
                        if (_formkey.currentState!.validate())
                          {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignIn()),
                            )
                          }
                      },
                      backgroundColor: Colors.white,
                      tooltip: 'Increment',
                      child: const Icon(
                        Icons.done,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                  ),
                  //empty container
                  Container(
                    width: 300,
                    height: 130,
                  )
                ],
              ),
            )
          ],
        ),
      )),
    );
  }
}
