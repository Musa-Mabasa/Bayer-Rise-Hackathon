import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:zoeyapp/selection.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return OnBoardingScreenState();
  }
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: IntroductionScreen(
      pages: [
        PageViewModel(
          title: 'What is ELLAH?',
          body:
              'Empowering Ladies through Learning Awareness & Health is a platform that helps with women\'s health and wellness',
          image: buildImage('assets/undraw_appreciation_pfq2.svg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'We are here to help',
          body:
              'Utilize our resources to help you with your health and wellness',
          image: buildImage('assets/undraw_mobile_app_re_catg.svg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'We are here to make your life easier',
          body:
              'Keeping track of your health can be stressful, let us help you with that',
          image: buildImage('assets/undraw_mindfulness_8gqa.svg'),
          decoration: getPageDecoration(),
        ),
        PageViewModel(
          title: 'Professional help is available with a click of a button',
          body:
              'Keeping track of your health can be stressful, let us help you with that',
          image: buildImage('assets/undraw_medicine_b-1-ol.svg'),
          decoration: getPageDecoration(),
        ),
      ],
      done: const Text(
        "Get Started",
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      onDone: () {
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const Selection()));
      },
      showNextButton: true,
      showSkipButton: true,
      skip: const Text("Skip"),
      next: const Icon(Icons.arrow_forward),
      dotsDecorator: DotsDecorator(
        size: const Size.square(10.0),
        activeSize: const Size(20.0, 10.0),
        activeColor: const Color(0xFFff6666),
        color: const Color(0xFFDADADA),
        spacing: const EdgeInsets.symmetric(horizontal: 3.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
      ),
    ));
  }

  Widget buildImage(String path) => Center(
        child: SvgPicture.asset(
          path,
          width: 300,
        ),
      );
}

PageDecoration getPageDecoration() => const PageDecoration(
    titleTextStyle: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: Color(0xFF001C30)),
    bodyTextStyle: TextStyle(fontSize: 18, color: Color(0xFF001C30)),
    bodyPadding: EdgeInsets.all(24),
    imagePadding: EdgeInsets.all(24),
    pageColor: Colors.white);
