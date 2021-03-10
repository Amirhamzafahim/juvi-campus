import 'package:flutter/material.dart';
import 'package:ju_cse/categorycustom.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Research extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Research"),
      ),
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  myinfo(
                      tap: () {
                        _launchInWebView('https://www.juniv.edu/research/4600');
                      },
                      img: 'assets/reserch.png',
                      txt: 'Departmental Journal)'),
                  myinfo(
                      tap: () {
                        _launchInWebView('https://www.juniv.edu/research/3537');
                      },
                      img: 'assets/reserch.png',
                      txt: 'Research'),
                ],
              ),
              SizedBox(
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }

  myinfo({String img, txt, Function tap}) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: NeuCard(
        curveType: CurveType.flat,
        bevel: 10,
        decoration: NeumorphicDecoration(
            color: Color(0xffE5E5E5),
            // color: Colors.black,
            // E5E5E5
            borderRadius: BorderRadius.circular(15)),
        height: 70,
        width: Get.width,
        child: ListTile(
          onTap: tap,
          leading: Image.asset("$img"),
          title: Text("$txt"),
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
