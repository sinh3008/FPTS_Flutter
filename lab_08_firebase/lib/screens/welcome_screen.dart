import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lab_08_firebase/screens/login_screen.dart';
import 'package:lab_08_firebase/screens/registration_screen.dart';

import '../components/rounded_components.dart';

class WelcomeScreen extends StatefulWidget {
  static const String routeName = "/welcome";
  late final Duration duration;

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with SingleTickerProviderStateMixin {
  //animation not animated
  late AnimationController controller;
  late Animation animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = AnimationController(
      vsync: this, // the SingleTickerProviderStateMixin,
      duration: const Duration(seconds: 2),
      // upperBound: 100,
    );

    // animation = CurvedAnimation(parent: controller, curve: Curves.bounceInOut);

    animation =
        ColorTween(begin: Colors.grey, end: Colors.white).animate(controller);

    //animation tăng dần từ 0-1
    controller.forward();

    //animation giảm từ 1-0
    // controller.reverse(from: 1.0);

    // animation.addStatusListener((status) {
    //   if(status == AnimationStatus.completed){
    //     controller.reverse(from: 2);
    //   }else if(status == AnimationStatus.dismissed){
    //     controller.forward();
    //   }
    // });

    controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: animation.value,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Row(
              children: <Widget>[
                Flexible(
                  child: Hero(
                    tag: 'logo',
                    child: Container(
                      // height: animation.value * 100,
                      height: 100,
                      child: Image.asset('images/logo.png'),
                    ),
                  ),
                ),
                SizedBox(
                  child: DefaultTextStyle(
                    style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    child: AnimatedTextKit(
                      animatedTexts: [
                        TypewriterAnimatedText('Flash Chat'),
                        TypewriterAnimatedText('Flash Chat'),
                        TypewriterAnimatedText('Flash Chat'),
                      ],
                      onTap: () {},
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 48.0,
            ),
            RoundedButton(
                color: Colors.lightBlueAccent,
                text: 'Login',
                function: () {
                  Navigator.pushNamed(context, LoginScreen.routeName);
                }),
            RoundedButton(
                color: Colors.blueAccent, text: 'Register', function: () {
              Navigator.pushNamed(context, RegistrationScreen.routeName);
            }),
          ],
        ),
      ),
    );
  }
}

