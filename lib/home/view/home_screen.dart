import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:website/shared/responsive/constants.dart';
import 'package:website/shared/responsive/responsive.dart';
import 'package:website/shared/responsive/responsive_padding.dart';
import 'package:website/shared/responsive/responsive_row.dart';
import 'package:website/shared/theme/colors.dart';
import 'package:website/shared/widgets/parallax.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const logoWidth = 50.0;

  @override
  Widget build(BuildContext context) {
    final isDesktop = Responsive.isDesktop(context);
    final isTablet = Responsive.isTablet(context);

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.transparent,
      appBar: buildAppBar(isDesktop: isDesktop),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const _HomeScreenHeader(),
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
                            style: Theme.of(context).textTheme.titleMedium,
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
                            style: Theme.of(context).textTheme.headlineLarge,
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
                            'Check out LKW.app - my recent highlight I had the '
                            'pleasure to develop, a mobile application '
                            'designed to streamline logistics operations. '
                            "Now we're all ears for your feedback in surveys "
                            "too, so it will get even better. Recently I've "
                            'spiced it up with cool features like '
                            'in-app purchases and a shiny new PRO version. '
                            "You're not a truck driver yet? "
                            'No time to waste, download the app '
                            'and get on the road! 🚀',
                            style: Theme.of(context).textTheme.bodyLarge,
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
                            style: Theme.of(context).textTheme.titleMedium,
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
                            style: Theme.of(context).textTheme.headlineLarge,
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
                            'brings heart-centered meditation following '
                            'the Herzog method to your fingertips. Accomplish '
                            'daily sessions with soothing voiceovers and '
                            'background music recorded by a real orchesta to '
                            'help you and leave mental issues like depressions '
                            'and anxiety behind. Track your progress and '
                            'unlock premium features for an extra boost. '
                            'Join our supportive community and find peace '
                            "amidst life's chaos. Ready to dive in? "
                            "Let's spread some good vibes together! 🌟",
                            style: Theme.of(context).textTheme.bodyLarge,
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

  AppBar buildAppBar({required bool isDesktop}) {
    return AppBar(
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
          size: HomeScreen.logoWidth,
        ),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 15),
          child: ElevatedButton.icon(
            onPressed: () {
              launchUrl(
                Uri.parse(
                  'https://krolmic-dev-files.s3.eu-central-1.amazonaws.com/michal-krol-cv.pdf',
                ),
                webOnlyWindowName: '_blank',
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
    );
  }
}

class _HomeScreenHeader extends StatelessWidget {
  const _HomeScreenHeader();

  static const headerBackgroundImageHeight = 450.0;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: headerBackgroundImageHeight,
      child: ClipRRect(
        child: Stack(
          children: [
            _buildParallaxBackground(context),
            _buildContent(context),
          ],
        ),
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Parallax(
      background: Image.network(
        'assets/images/header_image.jpg',
        fit: BoxFit.cover,
        height: headerBackgroundImageHeight,
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Align(
      child: ResponsivePadding(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'App Development with Flutter and Love',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                fontSize: 45,
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
                  textStyle:
                      Theme.of(context).textTheme.headlineSmall!.copyWith(
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
              ],
            ),
            const SizedBox(height: 30),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.mail, size: 25),
              label: const Text('Hire Me'),
              style: ElevatedButton.styleFrom(
                elevation: 10,
                backgroundColor: primarySwatch,
                foregroundColor: Colors.white,
                minimumSize: const Size(175, 50),
                textStyle: Theme.of(context).textTheme.labelLarge!.copyWith(
                      fontSize: 23,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
