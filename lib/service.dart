import 'package:flutter/material.dart';
import 'package:ju_cse/Course_list.dart';
import 'package:ju_cse/categorycustom.dart';
import 'package:get/get.dart';
import 'package:ju_cse/class_routin.dart';
import 'package:ju_cse/Accadamic.dart';
import 'package:ju_cse/research.dart';

class Servicepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Services"),
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
                    tap: () {
                      Get.to(Routin());
                    },
                    size: 50,
                    text: "Routine",
                    image: "assets/routine.png",
                  ),
                  Buildcard(
                    tap: () {
                      Get.to(Courselist());
                    },
                    size: 50,
                    text: "Course List",
                    image: "assets/service.png",
                  )
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Buildcard(
                    tap: () {
                      Get.to(Accadamic());
                    },
                    size: 50,
                    text: "Accadamic",
                    image: "assets/accadamic.png",
                  ),
                  Buildcard(
                    tap: () {
                      Get.to(Research());
                    },
                    size: 50,
                    text: "Reseach",
                    image: "assets/reserch.png",
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
