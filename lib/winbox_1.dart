import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class WinBox_1 extends StatelessWidget {
  const WinBox_1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 24, left: 25),
      child: Container(
        width: 379,
        height: 98,
        decoration: BoxDecoration(
          color: Color(0xFFF5F5F5),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 34),
              child: SvgPicture.asset('images/o_l.svg'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23),
              child: Text(
                "Player 1",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(right: 19),
              child: SvgPicture.asset("images/trophy.svg"),
            )
          ],
        ),
      ),
    );
  }
}
