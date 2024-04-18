import 'package:flutter/material.dart';
import 'package:habbit_tracker/pages/HomePage.dart';
void main(){
  runApp(const MyAPP());
}
class MyAPP extends StatelessWidget {
  const MyAPP({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: "habbit tracker",
      debugShowCheckedModeBanner: false,home: HomePage(),);
  }
}