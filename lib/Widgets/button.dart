import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({Key? key, required this.title, required this.onPressed})
      : super(key: key);
  final String title;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 103, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(80),
        color: const Color(0xFF42C83C),
      ),
      child: TextButton(
        onPressed: () => onPressed(),
        child: Text(title,
            style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.black)),
      ),
    );
  }
}
//FloatingActionButton.extended(
//       label: Text(
//         title,
//         style: const TextStyle(
//             fontSize: 24,
//             fontWeight: FontWeight.w600,
//             fontFamily: 'R.font.montserrat'),
//       ), // <-- Text
//       backgroundColor: Color(0xFF42C83C),
//       onPressed: () => onPressed(),
//       extendedPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 135),
//     );
