import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:url_launcher/url_launcher.dart';
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
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: HomeScreenHeader.backgroundImageHeight,
              child: HomeScreenHeader(),
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

class HomeScreenHeader extends StatelessWidget {
  const HomeScreenHeader({
    super.key,
  });

  static const backgroundImageHeight = 450.0;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      child: Stack(
        children: [
          _buildParallaxBackground(context),
          _buildContent(context),
        ],
      ),
    );
  }

  Widget _buildParallaxBackground(BuildContext context) {
    return Parallax(
      background: Image.network(
        'assets/images/header_image.jpg',
        fit: BoxFit.cover,
        height: backgroundImageHeight,
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

class ParallaxFlowDelegate extends FlowDelegate {
  ParallaxFlowDelegate({
    required this.scrollable,
    required this.listItemContext,
    required this.backgroundImageKey,
  }) : super(repaint: scrollable.position);

  final ScrollableState scrollable;
  final BuildContext listItemContext;
  final GlobalKey backgroundImageKey;

  @override
  BoxConstraints getConstraintsForChild(int i, BoxConstraints constraints) {
    return BoxConstraints.tightFor(
      width: constraints.maxWidth,
    );
  }

  @override
  void paintChildren(FlowPaintingContext context) {
    final scrollableBox = scrollable.context.findRenderObject()! as RenderBox;
    final listItemBox = listItemContext.findRenderObject()! as RenderBox;
    final listItemOffset = listItemBox.localToGlobal(
      listItemBox.size.centerLeft(Offset.zero),
      ancestor: scrollableBox,
    );

    final viewportDimension = scrollable.position.viewportDimension;
    final scrollFraction =
        (listItemOffset.dy / viewportDimension).clamp(0.0, 1.0);

    final verticalAlignment = Alignment(0, scrollFraction * 2 - 1);

    final backgroundSize =
        (backgroundImageKey.currentContext!.findRenderObject()! as RenderBox)
            .size;
    final listItemSize = context.size;
    final childRect =
        verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    context.paintChild(
      0,
      transform:
          Transform.translate(offset: Offset(0, childRect.top)).transform,
    );
  }

  @override
  bool shouldRepaint(ParallaxFlowDelegate oldDelegate) {
    return scrollable != oldDelegate.scrollable ||
        listItemContext != oldDelegate.listItemContext ||
        backgroundImageKey != oldDelegate.backgroundImageKey;
  }
}

class Parallax extends SingleChildRenderObjectWidget {
  const Parallax({
    required Widget background,
    super.key,
  }) : super(child: background);

  @override
  RenderObject createRenderObject(BuildContext context) {
    return RenderParallax(scrollable: Scrollable.of(context));
  }

  @override
  void updateRenderObject(
    BuildContext context,
    covariant RenderParallax renderObject,
  ) {
    renderObject.scrollable = Scrollable.of(context);
  }
}

class ParallaxParentData extends ContainerBoxParentData<RenderBox> {}

class RenderParallax extends RenderBox
    with RenderObjectWithChildMixin<RenderBox>, RenderProxyBoxMixin {
  RenderParallax({
    required ScrollableState scrollable,
  }) : _scrollable = scrollable;

  ScrollableState _scrollable;

  ScrollableState get scrollable => _scrollable;

  set scrollable(ScrollableState value) {
    if (value != _scrollable) {
      if (attached) {
        _scrollable.position.removeListener(markNeedsLayout);
      }
      _scrollable = value;
      if (attached) {
        _scrollable.position.addListener(markNeedsLayout);
      }
    }
  }

  @override
  void attach(covariant PipelineOwner owner) {
    super.attach(owner);
    _scrollable.position.addListener(markNeedsLayout);
  }

  @override
  void detach() {
    _scrollable.position.removeListener(markNeedsLayout);
    super.detach();
  }

  @override
  void setupParentData(covariant RenderObject child) {
    if (child.parentData is! ParallaxParentData) {
      child.parentData = ParallaxParentData();
    }
  }

  @override
  void performLayout() {
    size = constraints.biggest;

    final background = child!;
    final backgroundImageConstraints =
        BoxConstraints.tightFor(width: size.width);
    background.layout(backgroundImageConstraints, parentUsesSize: true);

    (background.parentData! as ParallaxParentData).offset = Offset.zero;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    final viewportDimension = scrollable.position.viewportDimension;

    final scrollableBox = scrollable.context.findRenderObject()! as RenderBox;
    final backgroundOffset =
        localToGlobal(size.centerLeft(Offset.zero), ancestor: scrollableBox);

    final scrollFraction =
        (backgroundOffset.dy / viewportDimension).clamp(0.0, 1.0);

    final verticalAlignment = Alignment(0, scrollFraction * 2 - 1);

    final background = child!;
    final backgroundSize = background.size;
    final listItemSize = size;
    final childRect =
        verticalAlignment.inscribe(backgroundSize, Offset.zero & listItemSize);

    context.paintChild(
      background,
      (background.parentData! as ParallaxParentData).offset +
          offset +
          Offset(0, childRect.top),
    );
  }
}
