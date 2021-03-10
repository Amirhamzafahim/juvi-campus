import 'package:flutter/material.dart';
import 'package:ju_cse/categorycustom.dart';

class Routin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Class Routine"),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Buildcard(
                    size: 50,
                    text: "Fall 2020",
                    image: "assets/routine.png",
                  ),
                  Buildcard(
                    size: 50,
                    text: "Winter 2020",
                    image: "assets/winter.png",
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Buildcard(
                    size: 40,
                    text: "Summer 2020",
                    image: "assets/summer.png",
                  ),
                  Buildcard(
                    size: 40,
                    text: "Spring 2020",
                    image: "assets/teacher.png",
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
