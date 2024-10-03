import 'dart:ui';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:flutter/material.dart';
import 'onboarding_model.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  bool onLastPage = false;
  bool onLastPageTwo = false;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            onPageChanged: (index) {
              setState(() {
                onLastPage = (index == 3);
              });
              setState(() {
                onLastPageTwo = (index == 3);
              });
            },
            itemCount: onboardImages.length,
            controller: _pageController,
            itemBuilder: (context, index) => OnboardContent(
              image: onboardImages[index].image,
              title: onboardImages[index].title,
              description: onboardImages[index].description,
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 15,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _pageController.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeInOut,
                      );
                    },
                    child: Container(
                        alignment: Alignment.center,
                        height: 50,
                        width: 350,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(11)),
                          color: Colors.transparent,
                          border: Border(
                            bottom: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            right: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            left: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                            top: BorderSide(
                              color: Colors.white,
                              width: 1,
                            ),
                          ),
                        ),
                        child: onLastPageTwo
                            ? const Text(
                                "Continue",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              )
                            : const Text(
                                "Next",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500),
                              )),
                  ),
                ],
              ),
            ),
          ),
          onLastPage
              ? const Positioned(
                  left: 340,
                  right: 5,
                  bottom: 0,
                  child: Text(
                    " ",
                  ),
                )
              : Positioned(
                  left: 340,
                  right: 5,
                  bottom: 0,
                  child: GestureDetector(
                    onTap: () {
                      _pageController.jumpToPage(3);
                    },
                    child: const Text(
                      "Skip",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ),
          Positioned(
            left: 15,
            right: 5,
            bottom: 700,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: onboardImages.length,
              effect: const SlideEffect(
                activeDotColor: Colors.white,
                dotHeight: 3,
                dotWidth: 85,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

final List<Onboard> onboardImages = [
  Onboard(
    image: "assets/images/onboardingImages/onboardingpic1.png",
    title: "Welcome to Shop.easy!",
    description: "Discover amazing products and deals with ease.",
  ),
  Onboard(
    image: "assets/images/onboardingImages/onboardingpic2.png",
    title: "Easy Shopping",
    description: "Find what you need quickly and efficiently.",
  ),
  Onboard(
    image: "assets/images/onboardingImages/onboardingpic3.png",
    title: "Exclusive Offers",
    description: "Enjoy special discounts and promotions.",
  ),
  Onboard(
    image: "assets/images/onboardingImages/onboardingpic4.png",
    title: "Get updates on your purchases",
    description: "Get notifications and track progress of your order",
  ),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });

  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(image),
            ),
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: -5),
            child: Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Colors.transparent, Colors.black],
                ),
              ),
            ),
          ),
        ),
        Positioned(
          left: 20,
          right: 0,
          bottom: 130,
          child: Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              color: Colors.white,
            ),
          ),
        ),
        Positioned(
          left: 20,
          right: 0,
          bottom: 110,
          child: Text(
            description,
            style: const TextStyle(
              fontSize: 16,
              color: Colors.white54,
            ),
          ),
        ),
      ],
    );
  }
}
