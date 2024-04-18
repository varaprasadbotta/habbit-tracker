import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:habbit_tracker/widgets/card_Tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //list of data
  List info = [
    //["task name","timestart","timegoal",habbitselected]
    ["Do coding", "0", "10", false],
    ["ui based application", "4", "10", true],
    ["complete project", "0", "10", false],
    ["play cricket", "0", "10", false],
    ["habbit tracker", "0", "10", false],
  ];
  //function if tapped on playand pause
  void playPauseButton(int index) {
    setState(() {
      info[index][3] = !info[index][3];
    });
  }

  //function if you clicked on the seceting button
  void tappedinsetting(int index) {
    setState(() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Text("hey! you tap on the settings button  \n" +
                  info[index][0] +
                  "\n How can i help"),
              icon: Icon(Icons.account_circle_rounded),
            );
          });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("consistency is key"),
        ),
        body: ListView.builder(
            itemCount: info.length,
            itemBuilder: (context, index) {
              return Card_tail(
                taskName: info[index][0],
                timestart: int.parse(info[index][1]),
                timegoal: int.parse(info[index][2]),
                buttonTapped: () {
                  playPauseButton(index);
                },
                habbitselected: info[index][3],
                settingsTapped: () {
                  tappedinsetting(index);
                },
              );
            }));
  }
}
