import 'package:dicoding_submision_ahmadmuji/login&register/loginpage.dart';
import 'package:dicoding_submision_ahmadmuji/login&register/regist.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1C262F),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 200,
                      decoration: BoxDecoration
                        (
                          color: Colors.orange,
                          borderRadius: BorderRadius.only
                            (
                              bottomLeft: Radius.circular(50),
                              bottomRight: Radius.circular(50)
                          )
                      ),
                      child: Column
                        (
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container
                            (
                            height: 130,
                            width: 130,
                            decoration: BoxDecoration
                              (
                              shape: BoxShape.circle,
                              image: DecorationImage
                                (
                                  image:
                                      AssetImage("assets/images/ahmadmuji.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Container(
                            child: Text(
                              "Ahmad Muji",
                              style: TextStyle(
                                fontFamily: 'Nexa',
                                fontSize: 20,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 2,
                          ),
                              ],
                            ),
                          ),
                        ],
                      ),

                  ],
                ),
                Container(
                  child: Column(
                    children: <Widget>[
                      FlatButton(
                        child: Container(
                          margin: EdgeInsets.only(top: 15),
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.person,
                                        color: Colors.orange,
                                        size: 35,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "EDIT PROFILE",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "Nexa",
                                            color: Colors.orange),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.navigate_next,
                                    size: 40,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context) {
                            return Regist();
                          },
                          ),
                               (route) => false);
                        },
                      ),

                      FlatButton(
                        child: Container(
                          margin: EdgeInsets.only(top: 0),
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.settings,
                                        color: Colors.orange,
                                        size: 35,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "SETTINGS",
                                        style: TextStyle(
                                            fontSize: 17,
                                            fontFamily: "Nexa",
                                            color: Colors.orange),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Icon(
                                    Icons.navigate_next,
                                    size: 40,
                                    color: Colors.orange,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {},
                      ),
                      FlatButton(
                        child: Container(
                          height: 80,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 3,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(10),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(
                                        Icons.arrow_back,
                                        color: Colors.red,
                                        size: 35,
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "LOGOUT",
                                        style: TextStyle(
                                          fontSize: 17,
                                          fontFamily: "Nexa",
                                          color: Colors.red,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                            builder: (context) {
                              return LoginPage();
                            },
                          )
                              , (route) => false);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),

        ),
      );

  }
}
