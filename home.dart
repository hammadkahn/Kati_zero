import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.only(top: 76),
            child: Container(
              height: 415,
              width: 364,
              color: const Color(0xFFC5C5C5),
              child: Column(
                children: [
                  SizedBox(
                      child: Row(
                        children: [
                          Container(width: 120, color: Color(0xFFFFFFFF)),
                          Padding(padding: EdgeInsets.all(1)),
                          Container(width: 120, color: Color(0xFFFFFFFF)),
                          Padding(padding: EdgeInsets.all(1)),
                          Container(width: 120, color: Color(0xFFFFFFFF)),
                        ],
                      ),
                      height: 137),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: SizedBox(
                      child: Row(
                        children: [
                          Container(width: 120, color: Color(0xFFFFFFFF)),
                          Padding(padding: EdgeInsets.all(1)),
                          Container(width: 120, color: Color(0xFFFFFFFF)),
                          Padding(padding: EdgeInsets.all(1)),
                          Container(width: 120, color: Color(0xFFFFFFFF)),
                        ],
                      ),
                      height: 137,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 2),
                    child: SizedBox(
                      child: Row(
                        children: [
                          Container(width: 120, color: Color(0xFFFFFFFF)),
                          Padding(padding: EdgeInsets.all(1)),
                          Container(width: 120, color: Color(0xFFFFFFFF)),
                          Padding(padding: EdgeInsets.all(1)),
                          Container(width: 120, color: Color(0xFFFFFFFF)),
                        ],
                      ),
                      height: 137,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.only(top: 121),
            child: SvgPicture.asset(
              'images/Leader_board_button.svg',
              width: 376.32,
              height: 62,
            ),
          ))
        ],
      ),
    );
  }
}
