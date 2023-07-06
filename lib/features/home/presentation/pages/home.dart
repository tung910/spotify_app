import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotify/features/widgets/album.dart';
import 'package:spotify/layout/layout_screen.dart';

@RoutePage()
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Layout(
        children: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
                height: 128,
                margin: EdgeInsets.only(
                  top: 40,
                ),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color(0xffd7bd1e))),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("Popular",
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Sisa Rasa",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          )),
                      SizedBox(
                        height: 5,
                      ),
                      Text("Mahalini",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                          ))
                    ],
                  ),
                  Image.asset(
                    "assets/images/Mahalini.png",
                    width: 144,
                    height: 152,
                  )
                ],
              ),
            )
          ],
        ),
        SizedBox(
          height: 32,
        ),
        const Text("Today’s hits",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w700,
            )),
        const SizedBox(
          height: 12,
        ),
        SizedBox(
          height: 172,
          child: ListView.separated(
            separatorBuilder: (context, i) => const SizedBox(
              width: 16,
            ),
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            itemBuilder: (context, i) => Album(),
            itemCount: 10,
          ),
        )
      ],
    ));
  }
}
