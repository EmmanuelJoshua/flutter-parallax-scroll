import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:parallax_scroll/utils/assets.dart';

import '../utils/blend_mask.dart';
import '../utils/scroll_behaviour.dart';
import '../utils/theme.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: RichText(
          text: const TextSpan(
            style: TextStyle(
              color: white,
              fontSize: 32,
            ),
            children: [
              TextSpan(
                text: 'no',
              ),
              TextSpan(
                text: 'phone.',
                style: TextStyle(
                  decoration: TextDecoration.lineThrough,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 14),
            child: BlendMask(
              blendMode: BlendMode.difference,
              child: SvgPicture.asset(ImageAssets.menuIcon),
            ),
          ),
        ],
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  ImageAssets.phoneMockup,
                  height: screenHeight / 1.3,
                ),
              ],
            ),
          ),
          ScrollConfiguration(
            behavior: TransparentScrollBehavior(),
            child: SingleChildScrollView(
              physics: const ClampingScrollPhysics(),
              child: Column(
                children: [
                  Container(
                    color: black,
                    height: screenHeight,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'A new era of',
                            style: TextStyle(color: white, fontSize: 40),
                          ),
                          const Text(
                            'communication.',
                            style: TextStyle(
                              color: white,
                              decoration: TextDecoration.lineThrough,
                              fontSize: 40,
                            ),
                          )
                              .animate(
                                onPlay: (controller) {
                                  controller.repeat(reverse: true);
                                },
                              )
                              .saturate(delay: .5.seconds, duration: .7.seconds)
                              .then()
                              .blurXY(end: 24),
                          const Gap(100),
                          SvgPicture.asset(ImageAssets.mouseIcon, height: 55)
                              .animate(
                                  onPlay: (controller) => controller.repeat())
                              .shakeY(
                                delay: 300.ms,
                                curve: Curves.easeIn,
                                duration: 600.ms,
                                hz: 1,
                                amount: 3,
                              ),
                          const Gap(10),
                          const Text(
                            'scroll.',
                            style: TextStyle(color: white, fontSize: 20),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: screenHeight,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          BlendMask(
                            blendMode: BlendMode.difference,
                            child: Image.asset(
                              ImageAssets.notificationIcon,
                              height: 73,
                            ),
                          ),
                          const Gap(20),
                          const BlendMask(
                            blendMode: BlendMode.difference,
                            child: Text(
                              '0',
                              style: TextStyle(
                                color: white,
                                fontSize: 90,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          const BlendMask(
                            blendMode: BlendMode.difference,
                            child: Text(
                              'Silly',
                              style: TextStyle(
                                color: white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                                height: 0.9,
                              ),
                            ),
                          ),
                          const Gap(5),
                          const BlendMask(
                            blendMode: BlendMode.difference,
                            child: Text(
                              'Notifications',
                              style: TextStyle(
                                color: white,
                                fontSize: 30,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  BlendMask(
                    blendMode: BlendMode.difference,
                    child: Container(
                      color: white,
                      height: screenHeight,
                      child: Center(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            BlendMask(
                              blendMode: BlendMode.difference,
                              child: Image.asset(
                                ImageAssets.telephoneIcon,
                                height: 72,
                              ),
                            ),
                            const Gap(20),
                            const BlendMask(
                              blendMode: BlendMode.difference,
                              child: Text(
                                '0',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 90,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const BlendMask(
                              blendMode: BlendMode.difference,
                              child: Text(
                                'Unwanted',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  height: 0.9,
                                ),
                              ),
                            ),
                            const Gap(5),
                            const BlendMask(
                              blendMode: BlendMode.difference,
                              child: Text(
                                'Nightcalls',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    color: white,
                    height: screenHeight,
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 320,
                            child: RichText(
                              textAlign: TextAlign.center,
                              text: const TextSpan(
                                text: 'Turn off the noise, ',
                                style: TextStyle(
                                  color: black,
                                  fontSize: 40,
                                ),
                                children: [
                                  TextSpan(
                                    text: 'get a no',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  TextSpan(
                                    text: 'phone.',
                                    style: TextStyle(
                                      decoration: TextDecoration.lineThrough,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(40),
                          SizedBox(
                            height: 57,
                            width: 169,
                            child: TextButton(
                              style: ButtonStyle(
                                backgroundColor:
                                    const MaterialStatePropertyAll(black),
                                shape: MaterialStatePropertyAll(
                                  RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(6),
                                  ),
                                ),
                              ),
                              onPressed: () {},
                              child: const Text(
                                'Buy now',
                                style: TextStyle(
                                  color: white,
                                  fontSize: 22,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
