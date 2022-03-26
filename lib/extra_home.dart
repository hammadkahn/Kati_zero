import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';

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
      body: Container(
        height: 415,
        width: 364,
        margin: EdgeInsets.all(20),
        color: Color(0xFFC5C5C5),
        child: GridView.builder(
          shrinkWrap: true,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemCount: lst.length,
          itemBuilder: (context, index) {
            return Material(
              color: Colors.white,
              child: InkWell(
                onTap: () {},
                child: Center(
                    child: Text(lst[index], style: TextStyle(fontSize: 30))),
              ),
            );
          },
        ),
      ),
    );
  }
}
