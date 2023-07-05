import 'package:flutter/material.dart';

class Layout extends StatelessWidget {
  const Layout({Key? key, required this.children}) : super(key: key);
  final Widget children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.search),
          title: Image.asset(
            'assets/images/Spotify_Logo_RGB_Green.png',
            width: 133,
            height: 40,
          ),
          leadingWidth: 32,
          centerTitle: true,
          elevation: 0,
          actions: const [
            Icon(Icons.settings_outlined),
          ],
        ),
        body: SingleChildScrollView(child: children!),
        bottomNavigationBar: BottomNavigationBar(
          fixedColor: const Color.fromRGBO(66, 200, 60, 1),
          showUnselectedLabels: true,
          unselectedItemColor: const Color.fromRGBO(255, 255, 255, 0.6),
          onTap: (index) {},
          items: [
            const BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            const BottomNavigationBarItem(
              label: 'Playlist',
              icon: Icon(Icons.playlist_add_check),
            ),
            BottomNavigationBarItem(
              label: '',
              icon: Image.asset('assets/images/logo.png',
                  width: 64, height: 64, fit: BoxFit.cover),
            ),
            const BottomNavigationBarItem(
              label: 'History',
              icon: Icon(Icons.history_outlined),
            ),
            const BottomNavigationBarItem(
              label: 'Profile',
              icon: Icon(Icons.person),
            ),
          ],
        ));
  }
}
