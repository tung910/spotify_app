import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:spotify/widgets/Input.dart';
import 'package:spotify/widgets/button.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);
  handleLogin() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              child: InputField(
                hintText: 'Enter Username or Email',
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: InputField(
                hintText: 'Password',
                keyboardType: TextInputType.visiblePassword,
                suffixIcon: const Icon(
                  Icons.remove_red_eye_outlined,
                  color: Color.fromRGBO(91, 91, 91, 1),
                  size: 23,
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
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: ButtonWidget(
                  title: 'Log In',
                  onPressed: handleLogin,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/line.png',
                    width: 120,
                  ),
                  const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      child: Text(
                        'Or',
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 12,
                        ),
                      )),
                  Image.asset(
                    'assets/icons/line.png',
                    width: 120,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(
                          color: Color(0x99FFFFFF)), // foreground border
                    ),
                    onPressed: () {},
                    child: Image.asset('assets/icons/facebook.png'),
                  )),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 38, vertical: 12),
                      side: const BorderSide(
                          color: Color(0x99FFFFFF)), // foreground border
                    ),
                    onPressed: () {},
                    child: Image.asset('assets/icons/google.png'),
                  )),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                      child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 38, vertical: 12),
                      side: const BorderSide(
                          color: Color(0x99FFFFFF)), // foreground border
                    ),
                    onPressed: () {},
                    child: Image.asset('assets/icons/apple.png'),
                  )),
                ],
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't Have An Account? ",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
                GestureDetector(
                  child: const Text(
                    'Register',
                    style: TextStyle(
                        color: Color.fromRGBO(215, 189, 30, 1),
                        fontSize: 12,
                        fontWeight: FontWeight.w600),
                  ),
                  onTap: () => {AutoRouter.of(context).pushNamed('/register')},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}