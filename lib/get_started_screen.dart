import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotify/Widgets/button.dart';

@RoutePage()
class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({Key? key}) : super(key: key);
  onPressed(context) {
    AutoRouter.of(context).pushNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Image.asset(
          'assets/images/Spotify_Logo_RGB_Green.png',
          width: 133,
          height: 40,
        ),
        // Expanded(
        //   child: GridView.builder(
        //     itemCount: 20,
        //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        //         crossAxisCount: 4, crossAxisSpacing: 12, mainAxisSpacing: 12.0),
        //     itemBuilder: (BuildContext context, int index) {
        //       return Container(
        //         width: 12,
        //         height: 12,
        //         color: Colors.red,
        //       );
        //     },
        //   ),
        // ),
        const Text(
          'Music for everyone',
          style: TextStyle(fontSize: 24, color: Color.fromRGBO(30, 215, 96, 1)),
        ),
        const Text(
          'Nulla Lorem mollit cupidatat irure. Laborum magna nulla duis ullamco cillum dolor. Voluptate exercitation incididunt aliquip deserunt reprehenderit elit laborum. ',
          style:
              TextStyle(fontSize: 14, color: Color.fromRGBO(255, 255, 255, 1)),
        ),
        ButtonWidget(title: 'Get Started', onPressed: () => onPressed(context)),
      ],
    ));
  }
}
