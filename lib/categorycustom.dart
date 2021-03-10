import 'package:flutter/material.dart';
import 'package:neumorphic/neumorphic.dart';
import 'package:google_fonts/google_fonts.dart';

class Buildcard extends StatelessWidget {
  final String text;
  final String image;
  final double size;

  final Function tap;
  Buildcard({this.text, this.tap, this.image, this.size});
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
    return GestureDetector(
      onTap: tap,
      child: NeuCard(
        curveType: CurveType.concave,
        bevel: 7,
        decoration: NeumorphicDecoration(
            color: Color(0xffE5E5E5),
            // color: Colors.black,
            // E5E5E5
            borderRadius: BorderRadius.circular(15)),
        height: 170,
        width: 155,
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 100,
                width: 170,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(
                    "$image",
                  ),
                )),
              ),

              //
              Padding(
                padding: EdgeInsets.only(top: 10, left: size),
                child: Text(
                  "$text",
                  style: mystyle(11),
                ),
              )
            ],
          ),
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
