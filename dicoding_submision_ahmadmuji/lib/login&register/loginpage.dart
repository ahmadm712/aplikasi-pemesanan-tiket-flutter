import 'package:flutter/material.dart';
import 'package:dicoding_submision_ahmadmuji/login&register/regist.dart';
import 'package:dicoding_submision_ahmadmuji/models/homescreen.dart';
import 'package:dicoding_submision_ahmadmuji/main_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

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
              child: ListView(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(
                      top: 60,
                      bottom: 50,
                    ),
                    child: Column(
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(200),
                          child: Container(
                            height: 100,
                            width: 100,
                            color: Colors.orange,
                            child: ClipRRect(
                                child: Image.asset(
                                    'assets/images/cinemaheader.png')
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 30),
                          width: 320,
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.person),
                              labelText: "Email",
                              labelStyle:
                              TextStyle(fontWeight: FontWeight.bold),
                            ),
                            controller: emailController,

                          ),
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        Container(
                          width: 320,
                          child: TextField(
                            cursorColor: Colors.black,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.visibility),
                              labelText: "Password",
                              labelStyle:
                              TextStyle(fontSize: 15,fontWeight: FontWeight.bold),
                            ),
                            controller: passwordController,
                          ),
                        ),
                        Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text("Belum Punya Akun?"),
                              FlatButton(
                                  child: Text(
                                    "Daftar di sini",
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontFamily: 'Nexa',
                                        color: Colors.blue),
                                  ),
                                  onPressed: () {
                                    Navigator.push(context,
                                        MaterialPageRoute(builder: (context) {
                                          return Regist();
                                        }));
                                  }),
                            ],
                          ),
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.orange,
                            child: Text("Login",
                                style: TextStyle(
                                  fontFamily: 'Nexa',
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: ()  {
                              Navigator.push(context, MaterialPageRoute(builder: (context){
                                return MainPage();
                              }));
                            },
                          ),
                        ),
                        SizedBox(
                          height: 50,
                        ),
                        Text('atau',style: TextStyle(fontFamily: 'Nexa'),),
                        SizedBox(
                          height: 5,
                        ),

                        Text( 'Login dengan',style: TextStyle(fontFamily: 'Nexa'),),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.orange,
                            child: Text
                              ("Google",
                                style: TextStyle(
                                  fontFamily: 'Nexa',
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.orange,
                            child: Text
                              ("Facebook",
                                style: TextStyle(
                                  fontFamily: 'Nexa',
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {},
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 300,
                          height: 50,
                          child: RaisedButton(
                            color: Colors.orange,
                            child: Text
                              ("Twitter",
                                style: TextStyle(
                                  fontFamily: 'Nexa',
                                  fontWeight: FontWeight.bold,
                                )),
                            onPressed: () {},
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
      ),
    );
  }
}
