import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/extra_home.dart';
import 'package:myapp/leaderboard.dart';
import 'package:myapp/winning.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var boxes = [0, 0, 0, 0, 0, 0, 0, 0, 0];
  String img = '';
  List<int> lst = [];
  var a;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
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
            children: [
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
          Extrahome(),
          Padding(
            padding: const EdgeInsets.only(top: 60, left: 20),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (_) => LeaderBoard()));
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
          ),
        ],
      ),
    );
  }

  statusCheck() {
    if (img == 'images/z.png') {
      img = 'images/c.png';
    } else {
      img = 'images/z.png';
    }
  }
}
