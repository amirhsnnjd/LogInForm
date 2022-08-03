import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage("assets\\images\\img3.jpg"))),
        child: Center(
          
          child: Column(
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
                padding: const EdgeInsets.fromLTRB(0, 150, 0, 0),
                child: Text("you loged in !",
                    style: TextStyle(
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
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ),

            ],
          ),
        ),
      )),
    );
  }
}
