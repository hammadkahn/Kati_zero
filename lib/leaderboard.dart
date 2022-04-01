import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/winbox_1.dart';
import 'package:myapp/winbox_2.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 32, top: 60),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset('images/return.svg'),
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: Column(children: [
                    Text(
                      "L E A D E R",
                      style: TextStyle(
                          color: Color(0xFF0D47A1),
                          fontSize: 25,
                          fontWeight: FontWeight.w700),
                    ),
                    Text("B O A R D",
                        style: TextStyle(
                            color: Color(0xFF0D47A1),
                            fontSize: 35,
                            fontWeight: FontWeight.w700))
                  ]),
                ),
              ],
            ),
          ),
          Padding(padding: EdgeInsets.only(top: 56)),
          WinBox_2(),
          WinBox_1()
        ],
      ),
    );
  }
}
