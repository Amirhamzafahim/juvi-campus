import 'package:flutter/material.dart';
import 'package:ju_cse/categorycustom.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Accadamic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Accadamic"),
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
                        _launchInWebView(
                            'https://www.juniv.edu/department/cse/program/4599');
                      },
                      img: 'assets/accadamic.png',
                      txt: 'Bachelor of Science (B.Sc.)'),
                  myinfo(
                      tap: () {
                        _launchInWebView(
                            'https://www.juniv.edu/department/cse/program/3540');
                      },
                      img: 'assets/accadamic.png',
                      txt: 'Master of Science (M.Sc.)'),
                  myinfo(
                      tap: () {
                        _launchInWebView(
                            'https://www.juniv.edu/department/cse/program/3541');
                      },
                      img: 'assets/accadamic.png',
                      txt: ' Master of Philosophy (M.Phill.)'),
                  myinfo(
                      tap: () {
                        _launchInWebView(
                            'https://www.juniv.edu/department/cse/program/3542');
                      },
                      img: 'assets/accadamic.png',
                      txt: 'Doctor of Philosophy (Ph.D.)'),
                  myinfo(
                      tap: () {
                        _launchInWebView(
                            'https://www.juniv.edu/department/cse/program/3543');
                      },
                      img: 'assets/accadamic.png',
                      txt: ' PMSCS'),
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
        height: 60,
        width: Get.width,
        child: ListTile(
          onTap: tap,
          leading: Image.asset(
            "$img",
            width: 50,
          ),
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
