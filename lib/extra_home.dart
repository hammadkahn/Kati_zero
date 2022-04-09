import 'package:flutter/Material.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:myapp/list.dart';

import 'leaderboard.dart';

class Extrahome extends StatefulWidget {
  const Extrahome({Key? key}) : super(key: key);

  @override
  State<Extrahome> createState() => _ExtrahomeState();
}

class _ExtrahomeState extends State<Extrahome> {
  var winner = "";
  var win = SvgPicture.asset('images/win.svg');
  var winn = SvgPicture.asset('images/win_p2.svg');
  var lst = ["", "", "", "", "", "", "", "", ""];
  List<dynamic> pic = [Image.asset("images/c.png")];
  var cross = Image.asset("images/c.png");
  var zero = Image.asset("images/z.png");
  var p = "O";
  int a = 0;
  List<String> winner_list = [];
  void img(i) {
    if (lst[i] == '') {
      setState(() {
        lst[i] = p;
        print(lst);
        p = p == "O" ? "X" : "O";
      });
      findWinner(lst[i]);
    }
  }

  void reset() {
    setState(() {
      lst = ["", "", "", "", "", "", "", "", ""];
      p = "O";
      winner = "";
      win;
      print(lst);
    });
  }

  bool checkMove(i1, i2, i3, sign) {
    if (lst[i1] == sign && lst[i2] == sign && lst[i3] == sign) {
      return true;
    }
    return false;
  }

  void findWinner(currentsign) {
    if (checkMove(0, 1, 2, currentsign) ||
            checkMove(3, 4, 5, currentsign) ||
            checkMove(6, 7, 8, currentsign) || //rows
            checkMove(0, 3, 6, currentsign) ||
            checkMove(1, 4, 7, currentsign) ||
            checkMove(2, 5, 8, currentsign) || //columns
            checkMove(0, 4, 8, currentsign) ||
            checkMove(2, 4, 6, currentsign) //diagonal

        ) {
      setState(() {
        winner = currentsign;
        winner_list.add(winner);
      });
    } /* else
      () {
        if (!lst.contains("")) {
          setState(() {
            winner = "draw";
          });
        }
      }; */
    print(winner_list);
    print(winner);
  }

  @override
  Widget build(BuildContext context) {
    double game_board_width = MediaQuery.of(context).size.width - 60 > 364
        ? 364
        : MediaQuery.of(context).size.width - 60;
    double game_board_height = (415 / 364) * game_board_width;
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
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                    width: game_board_width,
                    height: game_board_height,
                    color: const Color(0xFFC5C5C5),
                    child: GridView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              childAspectRatio: 364 / 415,
                              crossAxisCount: 3,
                              crossAxisSpacing: 2,
                              mainAxisSpacing: 2),
                      itemCount: lst.length,
                      itemBuilder: (context, index) {
                        return Material(
                          color: Colors.white,
                          child: InkWell(
                            onTap: () => img(index),
                            child: Center(
                                child: lst[index] == "O"
                                    ? Image.asset('images/z.png')
                                    : lst[index] == "X"
                                        ? Image.asset('images/c.png')
                                        : Text("")),
                          ),
                        );
                      },
                    ),
                  ),
                  if (winner != "")
                    Container(
                        height: game_board_height,
                        width: game_board_width,
                        child: winner == "O"
                            ? SvgPicture.asset('images/win.svg')
                            : winner == "X"
                                ? SvgPicture.asset('images/win_p2.svg')
                                : Text("")),
                ],
              ),
            ),
            const SizedBox(height: 90),
            Padding(
              padding: const EdgeInsets.only(left: 23.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (_) => LeaderBoard(
                                winnerRecords: winner_list,
                              )));
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
                          reset();
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
