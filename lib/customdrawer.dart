import 'package:google_fonts/google_fonts.dart';

import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';

import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 1,
      child: ListView(
        children: <Widget>[
          Image.asset("assets/ju.png", fit: BoxFit.cover),
          SizedBox(
            height: 5,
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/ju.png'),
              fit: BoxFit.cover,
            ),
            title: Text(
              "About JUNIV",
              style: profilestyle(20),
            ),

            // leading: FaIcon(FontAwesomeIcons.infoCircle),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/cse.png'),
              fit: BoxFit.cover,
            ),
            title: Text(
              "About Of CSE",
              style: profilestyle(20),
            ),

            // leading: FaIcon(FontAwesomeIcons.infoCircle),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            leading: Image(
              image: AssetImage('assets/feedback.png'),
              fit: BoxFit.cover,
            ),
            title: Text(
              "About Of CSE",
              style: profilestyle(20),
            ),

            // leading: FaIcon(FontAwesomeIcons.infoCircle),
          ),
        ],
      ),
    );
  }

  TextStyle profilestyle(
    double size,
  ) {
    return GoogleFonts.montserrat(
      fontSize: size,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  drawerstyle(Widget child) {
    return Padding(
      padding: const EdgeInsets.only(right: 2),
      child: NeuCard(
        curveType: CurveType.flat,
        bevel: 2,
        decoration: NeumorphicDecoration(
            color: Color(0xffE5E5E5),
            // E5E5E5
            borderRadius: BorderRadius.circular(15)),
        height: 60,
        // width: MediaQuery.of(context).size.width,
        width: 210,
        child: child,
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
