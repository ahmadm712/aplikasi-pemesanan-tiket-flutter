import 'package:dicoding_submision_ahmadmuji/main_page.dart';
import 'package:dicoding_submision_ahmadmuji/models/welcomepage.dart';
import 'package:dicoding_submision_ahmadmuji/profile.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_submision_ahmadmuji/main.dart';

class Regist extends StatefulWidget {
  @override
  _RegistState createState() => _RegistState();
}

class _RegistState extends State<Regist> {
  TextEditingController usernameController = TextEditingController(text: "");
  TextEditingController emailController = TextEditingController(text: "");
  TextEditingController passwordController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height,
              color: Color(0xff1C262F),
              child: ListView(children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: 20, bottom: 30),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Container(
                            color: Colors.orange,
                            height: 70,
                            width: 70,
                            child:
                            Image.asset('assets/images/cinemaheader.png')),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Isi Form Dibawah Untuk Mendaftar",
                        style: TextStyle(
                            fontFamily: 'Nexa',
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 300,
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.account_circle_rounded),
                            labelText: "Nama",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.map_rounded),
                            labelText: "Alamat",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.dialer_sip),
                            labelText: "No HP",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        child: TextField(
                          cursorColor: Colors.orange,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.person),
                            labelText: "Email",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          controller: emailController,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 300,
                        child: TextField(
                          cursorColor: Colors.black,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            prefixIcon: Icon(Icons.visibility),
                            labelText: "Password",
                            labelStyle: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          controller: passwordController,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        child: RaisedButton(
                          color: Colors.orange,
                          child: Text("Daftar",
                              style: TextStyle(
                                fontFamily: 'Nexa',
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              )),
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                              builder: (context) {
                                return Profile();
                              },
                            )
                                , (route) => false);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
