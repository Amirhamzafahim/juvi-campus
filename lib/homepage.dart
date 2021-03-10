import 'package:flutter/material.dart';
import 'package:ju_cse/categorycustom.dart';
import 'package:get/get.dart';
import 'package:ju_cse/customdrawer.dart';
import 'package:ju_cse/notice.dart';
import 'package:ju_cse/service.dart';
import 'package:ju_cse/member.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MainDrawer(),
      key: _scaffoldKey,
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    _scaffoldKey.currentState.openDrawer();
                  }),
              SizedBox(
                height: 100,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Buildcard(
                    tap: () {
                      Get.to(Members());
                    },
                    size: 30,
                    text: "Faculty Members",
                    image: "assets/teacher.png",
                  ),
                  Buildcard(
                    tap: () {
                      Get.to(Servicepage());
                    },
                    size: 50,
                    text: "Services",
                    image: "assets/service.png",
                  )
                ],
              ),
              SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Buildcard(
                    tap: () {
                      Get.to(Notice());
                    },
                    size: 50,
                    text: "Notice",
                    image: "assets/notice.png",
                  ),
                  Buildcard(
                    tap: () {
                      _launchInWebView('https://www.juniv.edu/');
                    },
                    size: 50,
                    text: "Website",
                    image: "assets/web.png",
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _launchInWebView(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: true,
        forceWebView: true,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }
}
