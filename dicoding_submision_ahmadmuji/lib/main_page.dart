import 'package:dicoding_submision_ahmadmuji/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:dicoding_submision_ahmadmuji/models/homescreen.dart' as home;
import 'package:dicoding_submision_ahmadmuji/profile.dart' as profile;


class MainPage extends StatefulWidget {

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    controller = TabController(vsync: this, length: 2);
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Material(
        elevation: 10,
        color: Colors.orange,
        child: TabBar(
          controller: controller,
          tabs: <Widget>[
            Tab(
                icon: Icon(
                  Icons.home,
                  size: 35,
                )),
            Tab(
              icon: Icon(
                Icons.person,
                size: 35,
              ),
            ),
          ],
          labelColor: Colors.white,
          unselectedLabelColor: Colors.black,
          indicatorColor: Colors.black,
          indicatorSize: TabBarIndicatorSize.label,
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          MovieApp(),

          profile.Profile(),
        ],
      ),
    );
  }
}
