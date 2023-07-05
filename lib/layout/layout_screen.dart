import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class Layout extends StatelessWidget {
  const Layout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/images/Spotify_Logo_RGB_Green.png',
            width: 133,
            height: 40,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: SingleChildScrollView(
            child: Column(
          children: const [],
        )),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (index) {},
          items: const [
            BottomNavigationBarItem(
              label: 'Users',
              icon: Icon(Icons.u_turn_left),
            ),
            BottomNavigationBarItem(
              label: 'Posts',
              icon: Icon(Icons.u_turn_left),
            ),
            BottomNavigationBarItem(
              label: 'Settings',
              icon: Icon(Icons.u_turn_left),
            ),
          ],
        ));
  }
}
