import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class Membercard extends StatelessWidget {
  final String text;
  final String subtext;

  final String image;

  final Function tap;
  Membercard({
    this.text,
    this.tap,
    this.image,
    this.subtext,
  });
  TextStyle profilestyle(
    double size,
  ) {
    return GoogleFonts.montserrat(
      fontSize: size,
      color: Colors.black,
      fontWeight: FontWeight.w400,
    );
  }

  TextStyle mystyle(
    double size,
  ) {
    return GoogleFonts.montserrat(
      fontSize: size,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
  }

  @override
  Widget build(BuildContext context) {
    return NeuCard(
      curveType: CurveType.concave,
      bevel: 7,
      decoration: NeumorphicDecoration(
          color: Color(0xffE5E5E5),
          // color: Colors.black,
          // E5E5E5
          borderRadius: BorderRadius.circular(15)),
      height: 155,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 5),
              height: 110,
              width: 100,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("$image"),
                  )),
            ),
            Expanded(
                child: ListTile(
              onTap: tap,
              title: Text(
                "$text",
                textAlign: TextAlign.justify,
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(left: 5, top: 5),
                child: Text(
                  '$subtext',
                ),
              ),
            )),
          ],
        ),
      ),
    );
  }
}

// class Accadamic {
//   String img;
//   String txt;
//   Accadamic({this.img, this.txt});
// }
