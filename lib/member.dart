import 'package:flutter/material.dart';
import 'package:ju_cse/membercutom.dart';
import 'package:url_launcher/url_launcher.dart';

class Members extends StatefulWidget {
  @override
  _MembersState createState() => _MembersState();
}

class _MembersState extends State<Members> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Membercard(
                  tap: () {
                    _launchInWebView(
                        'https://www.juniv.edu/teachers/hanif_ju03');
                  },
                  image: "assets/1.jpg",
                  text: "Dr. Mohammad Hanif Ali, B.Sc(JU), MSc.(JU), PhD(UK)",
                  subtext:
                      "Professor, Department of Computer Science and Engineering",
                ),
                Membercard(
                  tap: () {
                    _launchInWebView('https://www.juniv.edu/teachers/cedas');
                  },
                  image: "assets/2.jpeg",
                  text:
                      "Dr. Jugal Krishna Das, B.Sc(Donetsk), MSc.(Donetsk), PhD(Kiev)",
                  subtext:
                      "Professor, Department of Computer Science and Engineering",
                ),
                Membercard(
                  tap: () {
                    _launchInWebView(
                        'https://www.juniv.edu/teachers/shorifuddin');
                  },
                  image: "assets/3.jpeg",
                  text:
                      "Dr. Mohammad Shorif Uddin, B.Sc. Engg. (BUET), M.Tech.Ed.(Japan), Ph.D.(Japan)",
                  subtext:
                      "Professor, Department of Computer Science and Engineering",
                ),
                Membercard(
                  tap: () {
                    _launchInWebView('https://www.juniv.edu/teachers/rmzahid');
                  },
                  image: "assets/4.jpg",
                  text:
                      "Dr. Mohammad Zahidur Rahman,B.Sc(BUET),MSc.(BUET),PhD(Malaysia)Dr.Mohammad Zahidur Rahman,B.Sc(BUET),MSc.(BUET), PhD(Malaysia)",
                  subtext:
                      "Professor,Department of Computer Science and Engineering",
                ),
                Membercard(
                  tap: () {
                    _launchInWebView('https://www.juniv.edu/teachers/imdad');
                  },
                  image: "assets/5.jpg",
                  text:
                      "Dr. Md. Imdadul Islam, B.Sc. Engg. (BUET), MSc. Engg. (BUET), PhD (JU)",
                  subtext:
                      "Professor, Department of Computer Science and Engineering",
                ),
                Membercard(
                  tap: () {
                    _launchInWebView(
                        'https://www.juniv.edu/teachers?department_id=9');
                  },
                  image: "",
                  text: "View All Faculty Members",
                  subtext:
                      "Department of Computer Science and Engineering have total 25 faculty members.Click Here to View All",
                ),
              ],
            ),
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
