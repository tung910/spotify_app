import 'package:flutter/material.dart';
import 'package:spotify/routes/index.dart';

void main() {
  runApp(MyApp());
}

Map<int, Color> _greenShades = const {
  50: Color.fromRGBO(66, 200, 60, 0.1),
  100: Color.fromRGBO(66, 200, 60, 0.2),
  200: Color.fromRGBO(66, 200, 60, 0.3),
  300: Color.fromRGBO(66, 200, 60, 0.4),
  400: Color.fromRGBO(66, 200, 60, 0.5),
  500: Color.fromRGBO(66, 200, 60, 0.6),
  600: Color.fromRGBO(66, 200, 60, 0.7),
  800: Color.fromRGBO(66, 200, 60, 0.9),
  700: Color.fromRGBO(66, 200, 60, 0.8),
  900: Color.fromRGBO(66, 200, 60, 1),
};

class MyApp extends StatelessWidget {
  final _appRouter = AppRouter();
  MaterialColor green = MaterialColor(0xff42C83C, _greenShades);

  MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Spotify',
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color.fromRGBO(0, 0, 0, 1),
        appBarTheme:
            const AppBarTheme(backgroundColor: Color.fromRGBO(0, 0, 0, 1)),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            backgroundColor: Color.fromRGBO(51, 51, 51, 1)),
      ),
      themeMode: ThemeMode.dark,
      theme: ThemeData(
          primarySwatch: green,
          textTheme:
              const TextTheme(headline2: TextStyle(color: Colors.white))),
    );
  }
}
