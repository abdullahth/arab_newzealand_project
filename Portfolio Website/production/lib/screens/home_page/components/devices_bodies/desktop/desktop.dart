import 'dart:ui';

import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:production/animations/fade_in/fade_in.dart';
import 'package:production/preferences/config_text_dir.dart';
import 'package:production/preferences/dims_config.dart';
import 'package:production/preferences/enums/assets.dart';
import 'package:production/preferences/navigations/app_bar_pages.dart';
import 'package:production/widgets/transition_widget_bouncing/transition_widget_bouncing.dart';
import '../../bar/app_bar.dart';

class DesktopHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dims = DimsConfig(context);
    final theme = Theme.of(context);

    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              width: dims.deviceWidth,
              height: dims.deviceHeight,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: Assets.natureBackgroundOne.provider,
                    fit: BoxFit.cover),
              ),
              child: BackdropFilter(
                filter: ImageFilter.blur(
                    sigmaX: dims.width(2), sigmaY: dims.height(2)),
                child: Container(
                  color: Colors.black.withOpacity(0.25),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(flex: 2),
                      FadeInAnimation(
                        showendAfterDurationInMilliSecs: 2000,
                        durationInMilliSecs: 250,
                        child: AutoSizeText(
                          'welcome'.tr,
                          textDirection: getSuitableTextDirection(),
                          maxFontSize: 32,
                          textAlign: TextAlign.center,
                          minFontSize: 16,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 24,
                              fontFamily: 'Quicksand'),
                        ),
                      ),
                      SizedBox(height: dims.deviceHeight * 0.05),
                      FadeInAnimation(
                        showendAfterDurationInMilliSecs: 2250,
                        durationInMilliSecs: 250,
                        child: AutoSizeText(
                          "${'outara_group'.tr}",
                          textAlign: TextAlign.center,
                          maxFontSize: 128,
                          minFontSize: 72,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 96,
                              fontFamily: 'Quicksand'),
                        ),
                      ),
                      FadeInAnimation(
                        showendAfterDurationInMilliSecs: 2500,
                        durationInMilliSecs: 250,
                        child: AutoSizeText(
                          'short_bio'.tr,
                          textAlign: TextAlign.center,
                          maxFontSize: 24,
                          minFontSize: 8,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.7),
                              fontSize: 16,
                              fontFamily: 'Quicksand'),
                        ),
                      ),
                      Spacer(flex: 1),
                      Expanded(
                        child: FadeInAnimation(
                          showendAfterDurationInMilliSecs: 2750,
                          durationInMilliSecs: 300,
                          child: SizedBox(
                              height: dims.deviceHeight * .15,
                              width: dims.deviceWidth,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  TextButton(
                                    onPressed: () async {
                                      Get.to(BouncingTransitionWidget());
                                      await Future.delayed(
                                          Duration(milliseconds: 5000));
                                      Get.offNamed('/journey');
                                    },
                                    child: Container(
                                        width: dims.deviceWidth * .2,
                                        child: Container(
                                          width: dims.deviceWidth * .2,
                                          height: dims.deviceHeight * .15,
                                          child: Center(
                                            child: AutoSizeText(
                                              'start_journy'.tr,
                                              textDirection:
                                                  getSuitableTextDirection(),
                                              maxFontSize: 40,
                                              textAlign: TextAlign.center,
                                              minFontSize: 16,
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.w900,
                                                  fontSize: 24,
                                                  fontFamily: 'Quicksand'),
                                            ),
                                          ),
                                        ),
                                        height: dims.deviceHeight * .15,
                                        decoration: BoxDecoration(
                                            color: theme.primaryColor,
                                            borderRadius: BorderRadius.circular(
                                                dims.width(25)))),
                                  ),
                                  SizedBox(width: dims.deviceWidth * 0.05),
                                  TextButton(
                                    onPressed: () {
                                      navigateToPage('about');
                                    },
                                    child: Container(
                                        width: dims.deviceWidth * .2,
                                        height: dims.deviceHeight * .15,
                                        child: Center(
                                          child: AutoSizeText(
                                            'more_info'.tr,
                                            textDirection:
                                                getSuitableTextDirection(),
                                            maxFontSize: 40,
                                            textAlign: TextAlign.center,
                                            minFontSize: 16,
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w900,
                                                fontSize: 24,
                                                fontFamily: 'Quicksand'),
                                          ),
                                        ),
                                        decoration: BoxDecoration(
                                            color: theme.accentColor,
                                            borderRadius: BorderRadius.circular(
                                                dims.width(25)))),
                                  )
                                ],
                              )),
                        ),
                      ),
                      Spacer(flex: 1),
                    ],
                  ),
                ),
              ),
            ),
            FadeInAnimation(
              durationInMilliSecs: 250,
              showendAfterDurationInMilliSecs: 2000,
              child: HomePageAppBar(),
            ),
          ],
        ),
      ),
    );
  }
}
