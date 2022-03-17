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
            mainAxisSize: MainAxisSize.max,
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
          )
        ],
      ),
    );
  }
}
