import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:zoeyapp/ask.dart';
import 'package:zoeyapp/authentication/login.dart';
import 'package:zoeyapp/health.dart';
import 'package:zoeyapp/onboardingscreen.dart';
import 'package:zoeyapp/profwelcome.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return LandingPageState();
  }
}

class LandingPageState extends State<LandingPage> {
  int currentIndex = 0;
  List<Map<String, dynamic>> urlImages = [
    {
      'url':
          'https://images.pexels.com/photos/5340280/pexels-photo-5340280.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'text': 'I need help',
      'widget': const OnBoardingScreen()
    },
    {
      'url':
          'https://images.pexels.com/photos/5327659/pexels-photo-5327659.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1',
      'text': 'Medical Practitioner',
      'widget': const ProfWelcome(),
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          const SizedBox(
              height: 200,
              child: Center(
                child: Text(
                  'Welcome to ELLAH',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF001C30)),
                ),
              )),
          CarouselSlider.builder(
              itemCount: urlImages.length,
              itemBuilder: (context, index, realIndex) {
                return buildImage(urlImages[index]['url'], index,
                    urlImages[index]['text'], urlImages[index]['widget']);
              },
              options: CarouselOptions(
                  height: 400,
                  autoPlay: true,
                  enlargeCenterPage: true,
                  onPageChanged: (index, reason) =>
                      setState(() => currentIndex = index))),
          const SizedBox(height: 50),
          buildIndicator(),
        ],
      )),
    );
  }

  Widget buildImage(String urlImage, int index, String text, Widget screen) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context)
            .push(MaterialPageRoute(builder: (context) => screen));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 13),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.5),
                  BlendMode.darken,
                ),
                child: Image.network(urlImage, fit: BoxFit.cover, width: 1000),
              ),
            ),
            Center(
              child: Text(
                text,
                style: const TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIndicator() {
    return AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: urlImages.length,
      effect: const SlideEffect(
        dotHeight: 10,
        dotWidth: 10,
        activeDotColor: Color(0xFFff6666),
        dotColor: Colors.grey,
        spacing: 5.0,
      ),
    );
  }
}
