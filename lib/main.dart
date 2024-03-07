import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:website/responsive/responsive_padding.dart';
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
    const dummyText =
        'Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet. Lorem ipsum dolor sit amet, consetetur sadipscing elitr, sed diam nonumy eirmod tempor invidunt ut labore et dolore magna aliquyam erat, sed diam voluptua. At vero eos et accusam et justo duo dolores et ea rebum. Stet clita kasd gubergren, no sea takimata sanctus est Lorem ipsum dolor sit amet.';

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        toolbarHeight: 70,
        forceMaterialTransparency: true,
        elevation: 0,
        leading: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Image.network(
              'assets/images/logo.png',
              height: 60,
            )),
        actions: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.mail),
              label: const Text('Contact Me'),
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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Professional Mobile and \nMulti-platform App Development',
                      style:
                          Theme.of(context).textTheme.headlineLarge!.copyWith(
                                color: Colors.white,
                              ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: 20),
                    AnimatedTextKit(
                      isRepeatingAnimation: false,
                      animatedTexts: [
                        TypewriterAnimatedText(
                          'Freelance Fullstack Flutter Developer',
                          textStyle: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                color: Colors.white,
                              ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            // 1. Reference
            SizedBox(
              height: 400,
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: ResponsivePadding(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hello World',
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
                            dummyText,
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.start,
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
                            'assets/images/mockups.png',
                            // height: 450,
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
              height: 400,
              child: Row(
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
                            'assets/images/mockups.png',
                            height: 400,
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
                            'Hello World',
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
                            dummyText,
                            style: Theme.of(context).textTheme.bodyMedium,
                            textAlign: TextAlign.start,
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
