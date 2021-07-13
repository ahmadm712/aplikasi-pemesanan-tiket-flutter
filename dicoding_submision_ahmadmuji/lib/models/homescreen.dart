import 'package:dicoding_submision_ahmadmuji/login&register/loginpage.dart';
import 'package:flutter/material.dart';

import 'package:dicoding_submision_ahmadmuji/models/film_models.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15, horizontal: 5),
                  width: MediaQuery.of(context).size.width,
                  height: 270,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Row(
                          children: <Widget>[
                            Flexible(
                              flex: 1,
                              child: Card(
                                elevation: 4,
                                child: FlatButton(
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return LoginPage();
                                        }));
                                  },
                                  child: Container(
                                    width: MediaQuery.of(context).size.width,
                                    margin: EdgeInsets.all(5),
                                    child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.center,
                                      children: <Widget>[
                                        Icon(Icons.assignment, size: 30),
                                        SizedBox(
                                          height: 3,
                                        ),
                                        Text(
                                          "Belajar Bersama",
                                          style: TextStyle(
                                              fontFamily: 'Poppins',
                                              fontWeight: FontWeight.bold,
                                              fontSize: 15,
                                              color: Color(0xFFF707070)),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),

                          ],
                        ),
                      ),
                    ],
                  ),
                ),


              ],
            ),
          ],
        ),

      ),
    );
  }



  }
