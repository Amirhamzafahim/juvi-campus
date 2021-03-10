import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ju_cse/categorycustom.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class Notice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Notice"),
      ),
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SingleChildScrollView(
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
                              'https://www.juniv.edu/discussion/12357');
                        },
                        txt: 'PMSCS Admission Test Notice Spring-2021'),
                    myinfo(
                        tap: () {
                          _launchInWebView(
                              'https://www.juniv.edu/discussion/12333');
                        },
                        txt: 'PMSCS Program Urgent Notice'),
                    myinfo(
                        tap: () {
                          _launchInWebView(
                              'https://www.juniv.edu/discussion/12318');
                        },
                        txt: 'PMSCS Research Project Notice Summer-2020'),
                    myinfo(
                        tap: () {
                          _launchInWebView(
                              'https://www.juniv.edu/discussion/12316');
                        },
                        txt: 'PMSCS Makeup Class Notice Fall-2020'),
                    myinfo(
                        tap: () {
                          _launchInWebView(
                              'https://www.juniv.edu/discussion/12312');
                        },
                        txt:
                            ' PMSCS Examination Schedule Summer-2020 for students'),
                    myinfo(
                        tap: () {
                          _launchInWebView(
                              'https://www.juniv.edu/discussion/12310');
                        },
                        txt: ' PMSCS Program Examination Notice Summer-2020'),
                    myinfo(
                        tap: () {
                          _launchInWebView(
                              'https://www.juniv.edu/discussion/12289');
                        },
                        txt:
                            ' PMSCS Research Project Distribution Notice Fall-2020'),
                    myinfo(
                        tap: () {
                          _launchInWebView(
                              'https://www.juniv.edu/discussion/12290');
                        },
                        txt:
                            ' PMSCS Admission Spring-2021 Application Deadline'),
                    myinfo(
                        tap: () {
                          _launchInWebView(
                              'https://www.juniv.edu/discussion/12283');
                        },
                        txt: ' PMSCS Class Notice Fall 2020'),
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  myinfo({String txt, Function tap}) {
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
            "assets/ju.png",
            width: 50,
          ),
          title: Text(
            "$txt",
            textAlign: TextAlign.justify,
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
