// ignore: avoid_web_libraries_in_flutter
import 'dart:js' as js;

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:website/responsive/constants.dart';
import 'package:website/responsive/responsive.dart';
import 'package:website/responsive/responsive_padding.dart';
import 'package:website/responsive/responsive_row.dart';
import 'package:website/theme/colors.dart';
import 'package:website/theme/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Michal Krol - Freelance Fullstack Flutter Developer',
      theme: theme,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final isTablet = Responsive.isTablet(context);

    const logoWidth = 50.0;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 70,
        forceMaterialTransparency: true,
        elevation: 0,
        leadingWidth: logoWidth + (isDesktop ? desktopPadding : mobilePadding),
        leading: Padding(
          padding: EdgeInsets.only(
            top: 7.5,
            left: isDesktop ? desktopPadding : mobilePadding,
          ),
          child: const FlutterLogo(
            size: logoWidth,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15),
            child: ElevatedButton.icon(
              onPressed: () {
                js.context.callMethod(
                  'open',
                  [
                    'https://krolmic-dev-files.s3.eu-central-1.amazonaws.com/michal-krol-cv.pdf',
                  ],
                );
              },
              icon: const Icon(Icons.file_present),
              label: const Text('Get CV'),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              right: isDesktop ? desktopPadding : mobilePadding,
            ),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.mail),
              label: const Text('Hire Me'),
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black87,
                Colors.transparent,
              ],
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              stops: [0.0, 1.0],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 450,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('assets/images/header_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Align(
                child: ResponsivePadding(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'App Development with Flutter and Love',
                        style:
                            Theme.of(context).textTheme.headlineLarge!.copyWith(
                          color: Colors.white,
                          shadows: [
                            const Shadow(
                              blurRadius: 10,
                              color: Colors.black45,
                              offset: Offset(5, 5),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      AnimatedTextKit(
                        isRepeatingAnimation: false,
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Michał Król, Freelance Fullstack Flutter Developer',
                            textStyle: Theme.of(context)
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                              color: Colors.white,
                              shadows: [
                                const Shadow(
                                  blurRadius: 10,
                                  color: Colors.black45,
                                  offset: Offset(5, 5),
                                )
                              ],
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                      const SizedBox(height: 30),
                      ElevatedButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.mail, size: 25),
                        label: const Text('Hire Me'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: primarySwatch,
                          foregroundColor: Colors.white,
                          minimumSize: const Size(175, 50),
                          textStyle:
                              Theme.of(context).textTheme.labelLarge!.copyWith(
                                    fontSize: 25,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // 1. Reference
            SizedBox(
              height: isTablet ? 550 : 400,
              child: ResponsiveRow(
                children: [
                  Expanded(
                    flex: 3,
                    child: ResponsivePadding(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Current reference #1',
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.start,
                          )
                              .animate()
                              .fadeIn(
                                delay: const Duration(milliseconds: 1100),
                              )
                              .moveX(
                                begin: -1000,
                                end: 0,
                                delay: const Duration(milliseconds: 1100),
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(milliseconds: 1000),
                              ),
                          Text(
                            'LKW.APP',
                            style: Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.start,
                          )
                              .animate()
                              .fadeIn(
                                delay: const Duration(milliseconds: 1100),
                              )
                              .moveX(
                                begin: -1000,
                                end: 0,
                                delay: const Duration(milliseconds: 1100),
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(milliseconds: 1000),
                              ),
                          const SizedBox(height: 10),
                          Text(
                            'Check out LKW.app - my recent highlight I had the pleasure to develop, a mobile application designed to streamline logistics operations. '
                            "Now we're all ears for your feedback in surveys too, so it will get even better. Recently I've spiced it up with cool features like in-app purchases and a shiny new PRO version."
                            "You're not a truck driver yet? No time to waste, download the app and get on the road! 🚀",
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.start,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          )
                              .animate()
                              .fadeIn(
                                delay: const Duration(milliseconds: 1100),
                              )
                              .moveX(
                                begin: -500,
                                end: 0,
                                delay: const Duration(milliseconds: 1100),
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(milliseconds: 1000),
                              ),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topRight,
                              end: Alignment.bottomLeft,
                              colors: [
                                primarySwatch,
                                Colors.lightBlueAccent,
                              ],
                            ),
                          ),
                        ),
                        Align(
                          child: Image.network(
                            'assets/images/lkw-app-mockups.png',
                            height: 400,
                            fit: BoxFit.fitHeight,
                          )
                              .animate()
                              .fadeIn(
                                delay: const Duration(milliseconds: 1100),
                              )
                              .moveX(
                                begin: 1500,
                                end: 0,
                                delay: const Duration(milliseconds: 1100),
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(milliseconds: 1000),
                              ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // 2. Reference
            SizedBox(
              height: isTablet ? 550 : 400,
              child: ResponsiveRow(
                reverseChildrenOnTablet: true,
                children: [
                  Expanded(
                    flex: 4,
                    child: Stack(
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: [
                                primarySwatch,
                                Colors.lightBlueAccent,
                              ],
                            ),
                          ),
                        ),
                        Align(
                          child: Image.network(
                            'assets/images/lumeus-mockups.png',
                            height: 400,
                            fit: BoxFit.fitHeight,
                          )
                              .animate()
                              .fadeIn(
                                delay: const Duration(milliseconds: 1100),
                              )
                              .moveX(
                                begin: -1500,
                                end: -10,
                                delay: const Duration(milliseconds: 1000),
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(milliseconds: 1000),
                              ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: ResponsivePadding(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Current reference #2',
                            style: Theme.of(context).textTheme.titleSmall,
                            textAlign: TextAlign.start,
                          )
                              .animate()
                              .fadeIn(
                                delay: const Duration(milliseconds: 1100),
                              )
                              .moveX(
                                begin: 1000,
                                end: 0,
                                delay: const Duration(milliseconds: 1100),
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(milliseconds: 1000),
                              ),
                          Text(
                            'Lumeus-App',
                            style: Theme.of(context).textTheme.headlineMedium,
                            textAlign: TextAlign.start,
                          ).animate().moveX(
                                begin: 1000,
                                end: 0,
                                delay: const Duration(milliseconds: 1100),
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(milliseconds: 1000),
                              ),
                          const SizedBox(height: 10),
                          Text(
                            'Lumeus, written from scratch with Flutter, '
                            'brings heart-centered meditation following the Herzog method to your fingertips. '
                            'Accomplish daily sessions with soothing voiceovers and background music recorded by a real orchesta to '
                            'help you and leave mental issues like depressions and anxiety behind. '
                            'Track your progress and unlock premium features for an extra boost. '
                            "Join our supportive community and find peace amidst life's chaos. "
                            "Ready to dive in? Let's spread some good vibes together! 🌟",
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.start,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                          )
                              .animate()
                              .fadeIn(
                                delay: const Duration(milliseconds: 1100),
                              )
                              .moveX(
                                begin: 500,
                                end: 0,
                                delay: const Duration(milliseconds: 1100),
                                curve: Curves.fastLinearToSlowEaseIn,
                                duration: const Duration(milliseconds: 1000),
                              ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
