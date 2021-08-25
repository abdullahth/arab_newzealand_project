import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:production_v2/animations/fade_in/fade_in.dart';
import 'package:production_v2/prefernces/consts.dart';
import 'package:production_v2/prefernces/enums/assets.dart';
import 'package:get/get.dart';
import '../app_bar/app_bar.dart';

class LandingPageDesktopBody extends StatefulWidget {
  @override
  _LandingPageDesktopBodyState createState() => _LandingPageDesktopBodyState();
}

class _LandingPageDesktopBodyState extends State<LandingPageDesktopBody> {
  late double currentScrollOffset;
  final ScrollController _parentListViewController = ScrollController();

  @override
  void initState() {
    super.initState();
    currentScrollOffset = 0.0;
    _parentListViewController.addListener(() {
      setState(() {
        currentScrollOffset = _parentListViewController.offset;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    _parentListViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final AdvancedDevicesDimsConfig dims = AdvancedDevicesDimsConfig(context);
    final theme = Theme.of(context);
    return Scaffold(
      key: GlobalKey(debugLabel: 'LandingPage'),
      body: ListView(
        children: [
          Container(
            width: dims.deviceWidth,
            height: dims.deviceHeight,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Assets.bgOne.provider,
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Container(
                  width: dims.deviceWidth,
                  height: dims.deviceHeight,
                  color: Colors.black.withOpacity(0.4),
                ),
                SizedBox(
                  width: dims.deviceWidth,
                  height: dims.deviceHeight,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FadeInAnimation(
                        durationInMilliSecs: 500,
                        showendAfterDurationInMilliSecs: 500,
                        child: Container(
                          width: dims.deviceWidth * 0.15,
                          height: dims.deviceWidth * 0.15,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: Assets.logo.provider,
                                  fit: BoxFit.fill)),
                        ),
                      ),
                      SizedBox(height: dims.deviceHeight * 0.01),
                      FadeInAnimation(
                        durationInMilliSecs: 500,
                        showendAfterDurationInMilliSecs: 750,
                        child: AutoSizeText(
                          'aotara_group'.tr,
                          style: TextStyle(
                              color: theme.accentColor,
                              fontWeight: FontWeight.w900,
                              letterSpacing: dims.configWidth(3),
                              fontSize: 72),
                          maxFontSize: 96,
                          minFontSize: 64,
                          textDirection: textDirection,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                        ),
                      ),
                      FadeInAnimation(
                        durationInMilliSecs: 500,
                        showendAfterDurationInMilliSecs: 1000,
                        child: AutoSizeText(
                          'for_inv_and_dev'.tr,
                          style:
                              TextStyle(color: theme.accentColor, fontSize: 32),
                          maxFontSize: 48,
                          minFontSize: 24,
                          textDirection: textDirection,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                        ),
                      ),
                    ],
                  ),
                ),
                FadeInAnimation(
                    durationInMilliSecs: 500,
                    showendAfterDurationInMilliSecs: 250,
                    child: LandingPageAppBar(
                      tabsCallback: {
                        'about': () {},
                        'services': () {},
                        'testimonials': () {},
                        'contact': () {},
                      },
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
