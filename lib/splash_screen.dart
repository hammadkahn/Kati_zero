import 'dart:async';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'home.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(
        const Duration(seconds: 10),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const HomeScreen())));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF42A5F5),
      body: Stack(
        children: [
          Positioned(
            top: 0,
            child: Container(
              height: 487,
              width: size.width,
              color: const Color(0xFF0D47A1),
              child: Column(
                children: const [
                  Padding(padding: EdgeInsets.only(top: 66)),
                  Text(
                    "K A T I  Z E R O",
                    style: TextStyle(color: Colors.white, fontSize: 35),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
              top: 369,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'images/Kati.svg',
                    width: 172,
                    height: 174,
                  ),
                ],
              )),
          Positioned(
              bottom: 96,
              right: 0,
              left: 0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "P O W E R E D  B Y",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    )
                  ])),
          Positioned(
              bottom: 55,
              right: 0,
              left: 0,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Text(
                      "T E C H  I D A R A",
                      style: TextStyle(
                          color: Color(0xFF0D47A1),
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    )
                  ]))
        ],
      ),
    );
  }
}
