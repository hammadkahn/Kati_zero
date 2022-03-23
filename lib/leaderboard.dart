import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LeaderBoard extends StatelessWidget {
  const LeaderBoard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset('images/return.svg'),
              Column(children: [
                // Padding(padding: EdgeInsets.only(left: 36)),
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
            ],
          ),
        ],
      ),
    );
  }
}
