import 'package:flutter/material.dart';

class Courselist extends StatelessWidget {
  const Courselist({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Course List'),
      ),
      body: Container(
        height: 500,
        width: 500,
        child: Image(
          image: AssetImage('assets/course_list.png'),
        ),
      ),
    );
  }
}
