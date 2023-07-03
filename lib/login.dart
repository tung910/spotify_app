import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: Image.asset('assets/images/Spotify_Logo_RGB_Green.png',
              width: 133, height: 40, fit: BoxFit.fill),
          elevation: 0,
          backgroundColor: const Color(0xff0f0e0e),
          leading: IconButton(
            icon: Image.asset('assets/icons/back.png'),
            onPressed: () => Navigator.of(context).pop(),
          )),
      body: Container(
        width: double.infinity,
        color: const Color(0xff0f0e0e),
        child: Column(
          children: [
            const SizedBox(
              height: 80,
            ),
            const Text(
              'Log In',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 16,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'If You Need Any Support',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                Text(
                  'Click Here',
                  style: TextStyle(
                    color: Color.fromRGBO(30, 215, 96, 1),
                    fontSize: 12,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  hintText: 'Enter Username or Email',
                  hintStyle: const TextStyle(color: Color(0x99FFFFFF)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0x99FFFFFF), width: 1),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: TextField(
                style: const TextStyle(color: Colors.white),
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: const TextStyle(color: Color(0x99FFFFFF)),
                  suffixIcon: const Icon(
                    Icons.remove_red_eye,
                    color: Color(0x99FFFFFF),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0x99FFFFFF), width: 1),
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Forgot password?',
                  style: TextStyle(
                    color: Color.fromRGBO(255, 255, 255, 1),
                    fontSize: 12,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 103, vertical: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(80),
                color: const Color(0xFF42C83C),
              ),
              child: TextButton(
                onPressed: () {},
                child: const Text('Login',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                      child:  TextButton(onPressed: ()=>{}, child: Icon(Icons.facebook_outlined) ,)
                  ),
                  Expanded(
                      child: Container(
                    width: 100,
                    height: 48,
                    color: Colors.red,
                  )),
                  Expanded(
                      child: Container(
                    width: 100,
                    height: 48,
                    color: Colors.amberAccent,
                  ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
