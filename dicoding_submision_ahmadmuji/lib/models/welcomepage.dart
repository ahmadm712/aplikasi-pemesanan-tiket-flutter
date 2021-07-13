import 'package:dicoding_submision_ahmadmuji/buttons/gradienbutton.dart';
import 'package:dicoding_submision_ahmadmuji/login&register/loginpage.dart';
import 'package:dicoding_submision_ahmadmuji/login&register/regist.dart';
import 'package:dicoding_submision_ahmadmuji/models/images.header.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_submision_ahmadmuji/models/homescreen.dart';

class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            ImageHeader(

              imageSource: "assets/images/cinemaxxx.jpeg",

            ),
            ContentWelcome(),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 30),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: GradientButton(
                text: "Mulai yu!",
                onPress: () {
                  Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  )
                      , (route) => false);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
class ContentWelcome extends StatelessWidget {
  const ContentWelcome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          Text(
            "JADWAL BIOSKOP CINEMAXX",
            style: TextStyle(
              color: Colors.orange.withOpacity(0.8),
              fontWeight: FontWeight.bold,
              fontSize: 27,
            ),
          ),
          SizedBox(height: 20),
          Text(
            "Di Masa Pandemi ini Kita Butuh Hiburan untuk Menghibur Diri Kita supaya Tidak Stres.\nSalah Satu Hiburan Yang Cukup Banyak di gemari masyarakat indonesia ialah Menonton Film Nah Di Aplikasi Ini Kami Ingin menampilkan Jadwal Film Yang tayang Di Cinamaxx.",
            style: TextStyle(
              color: Colors.black.withOpacity(0.8),
              fontWeight: FontWeight.w300,
              fontSize: 17,
            ),
          ),
        ],
      ),
    );
  }
}
