import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/home.dart';

import 'leaderboard.dart';

class Extrahome extends StatefulWidget {
  const Extrahome({Key? key}) : super(key: key);

  @override
  State<Extrahome> createState() => _ExtrahomeState();
}

class _ExtrahomeState extends State<Extrahome> {
  @override
  Widget build(BuildContext context) {
    var lst = ["-", "-", "-", "-", "-", "-", "-", "-", "-"];
    return Scaffold(
      backgroundColor: Colors.white,
      body: SizedBox.expand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.only(top: 71)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'images/zeroo.svg',
                  width: 91,
                  height: 91,
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 28),
                  child: Text(
                    "VS",
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFFDBDBDB)),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(left: 25)),
                SvgPicture.asset(
                  'images/cross.svg',
                  width: 91,
                  height: 91,
                ),
              ],
            ),
            Padding(padding: EdgeInsets.only(bottom: 11)),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Player 1",
                  style: TextStyle(
                      color: Color(0xFF656565),
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                ),
                Padding(padding: EdgeInsets.only(right: 93)),
                Text(
                  "Player 2",
                  style: TextStyle(
                      color: Color(0xFF656565),
                      fontSize: 25,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 76, left: 30, right: 30),
              child: Container(
                constraints: BoxConstraints(maxWidth: 364),
                color: Color(0xFFC5C5C5),
                child: GridView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      childAspectRatio: 364 / 415,
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2),
                  itemCount: lst.length,
                  itemBuilder: (context, index) {
                    return Material(
                      color: Colors.white,
                      child: InkWell(
                        onTap: () {},
                        child: Center(
                            child: Text(lst[index],
                                style: TextStyle(fontSize: 30))),
                      ),
                    );
                  },
                ),
              ),
            ),
            const SizedBox(height: 121),
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => LeaderBoard()));
                    },
                    child: SvgPicture.asset(
                      'images/Leader_board_button.svg',
                      width: 218,
                      height: 62,
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 90),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (_) => HomeScreen()));
                        },
                        child: SvgPicture.asset(
                          'images/reset.svg',
                          width: 38.32,
                          height: 40.78,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
