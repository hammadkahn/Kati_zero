import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:myapp/extra_home.dart';
import 'package:myapp/list.dart';
import 'package:myapp/winbox_1.dart';
import 'package:myapp/winbox_2.dart';

class LeaderBoard extends StatelessWidget {
  final List<String> winnerRecords;
  const LeaderBoard({required this.winnerRecords});

  @override
  Widget build(BuildContext context) {
    print(winnerRecords);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 32, top: 60),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SvgPicture.asset('images/return.svg'),
                Padding(
                  padding: const EdgeInsets.only(left: 36),
                  child: Column(children: const [
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
          const Padding(padding: EdgeInsets.only(top: 56)),
          //loop for variable winner records
          for (var i = 0; i < winnerRecords.length; i++)
            //if i is even
            if (winnerRecords[i] == "O")
              WinBox_1()
            //if i is odd
            else if (winnerRecords[i] == "X")
              WinBox_2()

          //else
        ],
      ),
    );
  }
}
