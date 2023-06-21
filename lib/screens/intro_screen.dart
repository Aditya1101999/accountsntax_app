import 'package:accountsntax/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final List<Slide> slides = [
    Slide(
      image: 'assets/images/img1.png',
      text: 'Slide 1',
    ),
    Slide(
      image: 'assets/images/img1.png',
      text: 'Slide 2',
    ),
    Slide(
      image: 'assets/images/img1.png',
      text: 'Slide 3',
    ),
    Slide(
      image: 'assets/images/img1.png',
      text: 'Slide 4',
    ),
  ];

  int _currentSlideIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          CarouselSlider(
            items: slides
                .map((slide) => Padding(
                    padding: EdgeInsets.only(
                        bottom: (MediaQuery.of(context).size.height * 0.2)),
                    child: Image.asset(slide.image, fit: BoxFit.cover)))
                .toList(),
            options: CarouselOptions(
              height: MediaQuery.of(context).size.height,
              enableInfiniteScroll: false,
              viewportFraction: 1.0,
              onPageChanged: (index, reason) {
                setState(() {
                  _currentSlideIndex = index;
                });
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: MediaQuery.of(context).size.height * 0.1,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                    slides.length,
                    (index) => buildDotIndicator(index),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  slides[_currentSlideIndex].text,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF663274),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            right: 20,
            bottom: 20,
            child: FloatingActionButton(
              child: const Icon(Icons.arrow_forward),
                onPressed: () {
                        Navigator.pushReplacementNamed(context, loginRoute);
                      
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDotIndicator(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 12,
      height: 12,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color:
            _currentSlideIndex == index ? const Color(0xFF663274) : Colors.grey,
      ),
    );
  }
}

class Slide {
  final String image;
  final String text;

  Slide({required this.image, required this.text});
}
