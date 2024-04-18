import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class Card_tail extends StatelessWidget {
  final String taskName;
  final int timestart;
  final int timegoal;
  void Function()? buttonTapped;
  void Function()? settingsTapped;
  final bool habbitselected;

  Card_tail(
      {super.key,
      required this.taskName,
      required this.timestart,
      required this.timegoal,
      required this.buttonTapped,
      required this.settingsTapped,
      required this.habbitselected});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 12.0, right: 12, left: 12),
      child: Container(
        height: 90,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.green,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //percent logo
            Stack(children: [
              GestureDetector(
                onTap: buttonTapped,
                child: CircularPercentIndicator(
                  percent: .75,
                  backgroundColor: Colors.black,
                  curve: Curves.easeInBack,
                  center: Icon(
                    habbitselected ? Icons.pause : Icons.play_arrow,
                    size: 30,
                  ),
                  radius: 30,
                ),
              )
            ]),
          const  SizedBox(
              width: 15,
            ),
            //column to message and timestart and timegoal
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  taskName,
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  timestart.toString() + " / " + timegoal.toString(),
                  style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black54),
                )
              ],
            ),
            Spacer(),
            //settings logo
            GestureDetector(
                onTap: settingsTapped, child: const Icon(Icons.settings)),
          ],
        ),
      ),
    );
  }
}
