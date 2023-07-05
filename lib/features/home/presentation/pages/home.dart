import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotify/layout/layout_screen.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Layout(children: Column(children: [
      Container(height: 50, color: Colors.red, margin: EdgeInsets.symmetric(horizontal: 25),)
    ],));
  }
}
