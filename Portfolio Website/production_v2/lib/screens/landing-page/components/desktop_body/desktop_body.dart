import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:production_v2/animations/fade_in/fade_in.dart';
import 'package:production_v2/models/category.dart';
import 'package:production_v2/prefernces/consts.dart';
import 'package:production_v2/prefernces/enums/assets.dart';
import 'package:get/get.dart';
import 'package:production_v2/prefernces/enums/font_families.dart';
import 'package:production_v2/screens/landing-page/components/category_card/category_card.dart';
import '../app_bar/app_bar.dart';
import 'components/paint.dart';

class LandingPageDesktopBody extends StatefulWidget {
  @override
  _LandingPageDesktopBodyState createState() => _LandingPageDesktopBodyState();
}

class _LandingPageDesktopBodyState extends State<LandingPageDesktopBody> {
  late double currentScrollOffset;
  final ScrollController _parentListViewController = ScrollController();

  double aboutSectionOffset = 678.24,
      visionSectionOffset = 1508.8,
      whyUsSectionOffset = 3353.6,
      industriesSectionOffset = 2341.59,
      contactSectionOffset = 4973.76;

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
      floatingActionButton: currentScrollOffset > aboutSectionOffset
          ? FloatingActionButton(
              backgroundColor: theme.primaryColor,
              onPressed: () {
                _parentListViewController.animateTo(0,
                    duration: Duration(milliseconds: 1000), curve: Curves.ease);
              },
              child: Icon(
                Icons.arrow_upward_rounded,
                color: Colors.white,
              ))
          : null,
      body: ListView(
        controller: _parentListViewController,
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
                        'about': () {
                          _parentListViewController.animateTo(
                              aboutSectionOffset,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.ease);
                        },
                        'vision': () {
                          _parentListViewController.animateTo(
                              visionSectionOffset,
                              duration: Duration(milliseconds: 1000),
                              curve: Curves.ease);
                        },
                        'why_us': () {
                          _parentListViewController.animateTo(
                              whyUsSectionOffset,
                              duration: Duration(milliseconds: 1000),
                              curve: Curves.ease);
                        },
                        'industries': () {
                          _parentListViewController.animateTo(
                              industriesSectionOffset,
                              duration: Duration(milliseconds: 1500),
                              curve: Curves.ease);
                        },
                        'contact': () {
                          _parentListViewController.animateTo(
                              contactSectionOffset,
                              duration: Duration(milliseconds: 2500),
                              curve: Curves.ease);
                        },
                      },
                    ))
              ],
            ),
          ),
          SizedBox(
            width: dims.deviceWidth,
            height: dims.deviceHeight * 0.9,
            child: Stack(
              children: [
                Positioned(
                  left: 0,
                  child: Container(
                    width: dims.deviceWidth * 0.6,
                    height: dims.deviceHeight * 0.92,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: Assets.analysis.provider,
                      fit: BoxFit.cover,
                    )),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.black.withOpacity(0.3),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  child: Container(
                    width: dims.deviceWidth,
                    height: dims.deviceHeight * 0.9,
                    child: CustomPaint(
                      painter: DesktopBodyPaint(color: theme.primaryColor),
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  child: Container(
                    width: dims.deviceWidth * 0.5,
                    height: dims.deviceHeight,
                    color: theme.scaffoldBackgroundColor,
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 0.05,
                          child: Container(
                            width: double.infinity,
                            height: double.infinity,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Assets.logoBlack.provider,
                                    fit: BoxFit.cover)),
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          height: double.infinity,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: !(currentScrollOffset >
                                    aboutSectionOffset * 0.4)
                                ? []
                                : [
                                    FadeInAnimation(
                                      showendAfterDurationInMilliSecs: 250,
                                      durationInMilliSecs: 500,
                                      child: Container(
                                        width: dims.deviceWidth * 0.16,
                                        height: dims.deviceWidth * 0.16,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image: Assets.logo.provider,
                                                fit: BoxFit.cover)),
                                      ),
                                    ),
                                    SizedBox(height: dims.deviceHeight * 0.05),
                                    FadeInAnimation(
                                      showendAfterDurationInMilliSecs: 500,
                                      durationInMilliSecs: 500,
                                      child: ResponsivePadding(
                                        padding: SymetricPadding(
                                            context: context,
                                            horizontal:
                                                dims.deviceWidth * 0.025),
                                        child: AutoSizeText(
                                          'who_we_are'.tr,
                                          style: TextStyle(
                                              color: theme.accentColor,
                                              fontWeight: FontWeight.w700,
                                              fontFamily:
                                                  FontFamilies.anton.fontFamily,
                                              fontSize: 64),
                                          maxLines: 1,
                                          maxFontSize: 72,
                                          minFontSize: 16,
                                        ),
                                      ),
                                    ),
                                    FadeInAnimation(
                                      showendAfterDurationInMilliSecs: 600,
                                      durationInMilliSecs: 500,
                                      child: Container(
                                        color: theme.primaryColor,
                                        width: dims.deviceWidth * 0.3,
                                        height: dims.configHeight(4),
                                      ),
                                    ),
                                    FadeInAnimation(
                                      showendAfterDurationInMilliSecs: 750,
                                      durationInMilliSecs: 500,
                                      child: ResponsivePadding(
                                        padding: SymetricPadding(
                                            context: context,
                                            vertical: dims.configHeight(12),
                                            horizontal:
                                                dims.deviceWidth * 0.05),
                                        child: AutoSizeText(
                                          'brief'.tr,
                                          style: TextStyle(
                                              color: theme.accentColor,
                                              fontSize: 16),
                                          maxLines: 12,
                                          textDirection: textDirection,
                                          maxFontSize: 24,
                                          minFontSize: 8,
                                        ),
                                      ),
                                    ),
                                  ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: dims.deviceHeight * 0.1,
            width: dims.deviceWidth,
            color: theme.primaryColor,
          ),
          Container(
            height: dims.deviceHeight,
            width: dims.deviceWidth,
            color: Colors.white,
            child: Stack(
              children: [
                Positioned(
                  bottom: dims.deviceHeight * 0.05,
                  top: dims.deviceHeight * 0.05,
                  left: dims.deviceWidth * 0.05,
                  child: Container(
                      width: dims.deviceWidth * 0.6,
                      height: dims.deviceHeight * 0.9,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: Assets.bgFour.provider,
                              fit: BoxFit.cover))),
                ),
                Positioned(
                    left: dims.deviceWidth * 0.35,
                    child: Container(
                      width: dims.deviceWidth * 0.6,
                      height: dims.deviceHeight,
                      color: Colors.white,
                      child: ResponsivePadding(
                        child: Stack(
                          children: [
                            AnimatedPositioned(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeOut,
                              left: currentScrollOffset >= 1100 ? 0 : -2000,
                              top: dims.deviceHeight * 0.05,
                              bottom: dims.deviceHeight * 0.05,
                              child: SizedBox(
                                height: dims.deviceHeight * 0.9,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      'our_vision'.tr,
                                      style: TextStyle(
                                          color: theme.primaryColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 64,
                                          fontFamily: 'Quicksand'),
                                      textDirection: textDirection,
                                      maxFontSize: 96,
                                      minFontSize: 48,
                                      maxLines: 1,
                                    ),
                                    SizedBox(height: dims.deviceHeight * 0.025),
                                    SizedBox(
                                      width: dims.deviceWidth * 0.4,
                                      child: AutoSizeText(
                                        'vision'.tr,
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 20,
                                            fontFamily: 'Quicksand'),
                                        textDirection: textDirection,
                                        maxFontSize: 32,
                                        minFontSize: 16,
                                        maxLines: 4,
                                      ),
                                    ),
                                    Spacer(),
                                    AutoSizeText(
                                      'objective'.tr,
                                      style: TextStyle(
                                          color: theme.primaryColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 64,
                                          fontFamily: 'Quicksand'),
                                      textDirection: textDirection,
                                      maxFontSize: 96,
                                      minFontSize: 48,
                                      maxLines: 1,
                                    ),
                                    SizedBox(height: dims.deviceHeight * 0.025),
                                    SizedBox(
                                      width: dims.deviceWidth * 0.4,
                                      child: AutoSizeText(
                                        'objective_breif'.tr,
                                        style: TextStyle(
                                            color: Colors.grey.shade700,
                                            fontSize: 20,
                                            fontFamily: 'Quicksand'),
                                        textDirection: textDirection,
                                        maxFontSize: 32,
                                        minFontSize: 16,
                                        maxLines: 4,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        padding: SymetricPadding(
                            context: context,
                            vertical: dims.deviceHeight * 0.1,
                            horizontal: dims.configWidth(12)),
                      ),
                    ))
              ],
            ),
          ),
          Container(
            color: theme.scaffoldBackgroundColor,
            height: dims.deviceHeight * 0.1,
            width: dims.deviceWidth,
          ),
          SizedBox(
            height: dims.deviceHeight * 1.25,
            width: dims.deviceWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText(
                  'industries'.tr,
                  style: TextStyle(
                      color: theme.primaryColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 64,
                      fontFamily: 'Quicksand'),
                  textDirection: textDirection,
                  maxFontSize: 96,
                  minFontSize: 48,
                  maxLines: 1,
                ),
                SizedBox(height: dims.configHeight(24)),
                Container(
                  height: dims.configHeight(4),
                  width: dims.deviceWidth * 0.1,
                  color: theme.scaffoldBackgroundColor,
                ),
                SizedBox(height: dims.configHeight(24)),
                Expanded(
                  child: GridView.builder(
                    itemCount: Category.categoriesData.length,
                    physics: NeverScrollableScrollPhysics(),
                    itemBuilder: (_, i) {
                      return CategoryCard(category: Category.categoriesData[i]);
                    },
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: dims.deviceWidth,
            height: dims.deviceHeight * 2.15,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: dims.deviceHeight * 0.1,
                  width: dims.deviceWidth,
                ),
                SizedBox(
                  width: dims.deviceWidth,
                  height: dims.deviceHeight * 0.2,
                  child: Center(
                    child: ResponsivePadding(
                      padding: SymetricPadding(
                          context: context, horizontal: dims.deviceWidth * 0.1),
                      child: AutoSizeText(
                        "${'why_us_long'.tr}${'question_mark'.tr}",
                        style: TextStyle(
                            color: theme.primaryColor,
                            fontWeight: FontWeight.w900,
                            fontSize: 72,
                            fontFamily: 'Quicksand'),
                        textDirection: textDirection,
                        maxFontSize: 96,
                        minFontSize: 48,
                        maxLines: 2,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: dims.deviceHeight * 0.05),
                Container(
                  width: dims.deviceWidth * 0.1,
                  height: dims.configHeight(8),
                  color: theme.primaryColor,
                ),
                Expanded(
                    child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      ResponsivePadding(
                        padding: SymetricPadding(
                            context: context,
                            vertical: dims.deviceHeight * 0.1,
                            horizontal: dims.configWidth(12)),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(dims.configWidth(15)),
                          child: Container(
                            width: dims.deviceWidth * 0.3,
                            height: dims.deviceHeight * 0.6,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Assets.experts.provider,
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: dims.deviceWidth * 0.4,
                        height: dims.deviceHeight * 0.6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'experts'.tr,
                              style: TextStyle(
                                  color: theme.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 64,
                                  fontFamily: 'Quicksand'),
                              textDirection: textDirection,
                              maxFontSize: 96,
                              minFontSize: 48,
                              maxLines: 1,
                            ),
                            SizedBox(height: dims.deviceHeight * 0.025),
                            SizedBox(
                              width: dims.deviceWidth * 0.4,
                              child: AutoSizeText(
                                'experts_brief'.tr,
                                style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 20,
                                    fontFamily: 'Quicksand'),
                                textDirection: textDirection,
                                maxFontSize: 32,
                                minFontSize: 16,
                                maxLines: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      SizedBox(
                        width: dims.deviceWidth * 0.4,
                        height: dims.deviceHeight * 0.6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'our_team'.tr,
                              style: TextStyle(
                                  color: theme.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 64,
                                  fontFamily: 'Quicksand'),
                              textDirection: textDirection,
                              maxFontSize: 96,
                              minFontSize: 48,
                              maxLines: 1,
                            ),
                            SizedBox(height: dims.deviceHeight * 0.025),
                            SizedBox(
                              width: dims.deviceWidth * 0.4,
                              child: AutoSizeText(
                                'our_team_brief'.tr,
                                style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 20,
                                    fontFamily: 'Quicksand'),
                                textDirection: textDirection,
                                maxFontSize: 32,
                                minFontSize: 16,
                                maxLines: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      ResponsivePadding(
                        padding: SymetricPadding(
                            context: context,
                            vertical: dims.deviceHeight * 0.1,
                            horizontal: dims.configWidth(12)),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(dims.configWidth(15)),
                          child: Container(
                            width: dims.deviceWidth * 0.3,
                            height: dims.deviceHeight * 0.6,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Assets.teamWork.provider,
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                )),
                Expanded(
                    child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Spacer(),
                      ResponsivePadding(
                        padding: SymetricPadding(
                            context: context,
                            vertical: dims.deviceHeight * 0.1,
                            horizontal: dims.configWidth(12)),
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(dims.configWidth(15)),
                          child: Container(
                            width: dims.deviceWidth * 0.3,
                            height: dims.deviceHeight * 0.6,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Assets.humanPower.provider,
                                    fit: BoxFit.cover)),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: dims.deviceWidth * 0.4,
                        height: dims.deviceHeight * 0.6,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AutoSizeText(
                              'human_power'.tr,
                              style: TextStyle(
                                  color: theme.primaryColor,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 64,
                                  fontFamily: 'Quicksand'),
                              textDirection: textDirection,
                              maxFontSize: 96,
                              minFontSize: 48,
                              maxLines: 1,
                            ),
                            SizedBox(height: dims.deviceHeight * 0.025),
                            SizedBox(
                              width: dims.deviceWidth * 0.4,
                              child: AutoSizeText(
                                'human_power_brief'.tr,
                                style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 20,
                                    fontFamily: 'Quicksand'),
                                textDirection: textDirection,
                                maxFontSize: 32,
                                minFontSize: 16,
                                maxLines: 4,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Spacer()
                    ],
                  ),
                )),
              ],
            ),
          ),
          Container(
            width: dims.deviceWidth,
            height: dims.deviceHeight * 1.1,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: Assets.contact.provider, fit: BoxFit.cover)),
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: theme.scaffoldBackgroundColor.withOpacity(0.9),
              child: Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Spacer(),
                            AutoSizeText(
                              'contact'.tr,
                              style: TextStyle(
                                  color: theme.primaryColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 72),
                              maxLines: 1,
                              maxFontSize: 80,
                              minFontSize: 64,
                            ),
                            Container(
                              width: dims.deviceWidth * 0.25,
                              height: dims.configHeight(4),
                              color: theme.primaryColor,
                            ),
                            Expanded(
                              flex: 3,
                              child: ResponsivePadding(
                                padding: SymetricPadding(
                                    context: context,
                                    horizontal: dims.deviceWidth * 0.075,
                                    vertical: dims.deviceHeight * 0.15),
                                child: Container(
                                  width: double.infinity,
                                  height: double.infinity,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: Assets.logo.provider,
                                          fit: BoxFit.contain)),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Spacer(flex: 3),
                            AutoSizeText(
                              'phone_number'.tr,
                              style: TextStyle(
                                  color: theme.primaryColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 48),
                              maxLines: 1,
                              textDirection: textDirection,
                              textAlign: TextAlign.end,
                              maxFontSize: 64,
                              minFontSize: 32,
                            ),
                            SizedBox(height: dims.configHeight(12)),
                            AutoSizeText(
                              '+20123456789',
                              style: TextStyle(
                                  color: theme.accentColor, fontSize: 32),
                              maxLines: 1,
                              textDirection: textDirection,
                              textAlign: TextAlign.end,
                              maxFontSize: 48,
                              minFontSize: 24,
                            ),
                            Spacer(),
                            AutoSizeText(
                              'email_address'.tr,
                              style: TextStyle(
                                  color: theme.primaryColor,
                                  fontWeight: FontWeight.w900,
                                  fontSize: 48),
                              maxLines: 1,
                              textDirection: textDirection,
                              textAlign: TextAlign.end,
                              maxFontSize: 64,
                              minFontSize: 32,
                            ),
                            SizedBox(height: dims.configHeight(12)),
                            AutoSizeText(
                              'info@aotara.nz',
                              style: TextStyle(
                                  color: theme.accentColor, fontSize: 32),
                              maxLines: 1,
                              textDirection: textDirection,
                              textAlign: TextAlign.end,
                              maxFontSize: 48,
                              minFontSize: 24,
                            ),
                            Spacer(
                              flex: 3,
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        height: dims.deviceHeight,
                        width: dims.deviceWidth * 0.05,
                      ),
                      Container(
                        height: dims.deviceHeight * 1.1,
                        width: dims.deviceWidth * 0.05,
                        color: theme.primaryColor,
                      )
                    ],
                  ),
                  Positioned(
                    bottom: 0,
                    child: SizedBox(
                        width: dims.deviceWidth,
                        height: dims.deviceHeight * 0.1),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
