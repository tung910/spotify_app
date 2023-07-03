import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      children: [
        Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomRight,
              colors: <Color>[
                Color(0xff0f0e0e),
                Color(0xff0f0e0e),
                Color(0xff0f0e0e),
                Color(0xff0f0e0e),
                Color(0xff0f0e0e),
                Color(0xff0f0e0e),
                Color(0xff0f0e0e),
                Color(0xfff0f0f0),
                Color(0xfff0f0f0),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            )),
            child: Image.asset(
              'assets/images/Spotify_Logo_RGB_Green.png',
              width: 133,
              height: 40,
            )),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 103, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80),
            color: const Color(0xFF42C83C),
          ),
          child: TextButton(
            onPressed: () {
              AutoRouter.of(context).pushNamed('/login');
            },
            child: const Text('Get Started',
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    color: Colors.black)),
          ),
        )
      ],
    ));
  }
}
