import 'dart:async';
import 'dart:ui';

import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:production/animations/fade_in/fade_in.dart';
import 'package:production/models/category.dart';
import 'package:production/models/hotel.dart';
import 'package:production/preferences/config_text_dir.dart';
import 'package:production/preferences/consts.dart';
import 'package:production/preferences/dims_config.dart';
import 'package:production/preferences/enums/assets.dart';
import 'package:production/preferences/enums/videos.dart';
import 'package:production/screens/journey_page/componets/app_bar/app_bar.dart';

import 'package:get/get.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/category_card/category_card.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/cities_cards/auckland/auckland.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/cities_cards/christchurch/christchurch.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/cities_cards/wellington/wellington.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/cities_cards/hamilton/hamilton.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/hotels_cards/cordis/cordis.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/hotels_cards/hitlon/hilton.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/hotels_cards/novotel/novotel.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/hotels_cards/sofitel/sofitel.dart';
import 'package:production/screens/journey_page/componets/four_tabs_bar/four_tabs_bar.dart';
import 'package:video_player/video_player.dart';

class DesktopJourneyPage extends StatefulWidget {
  @override
  _DesktopJourneyPageState createState() => _DesktopJourneyPageState();
}

class _DesktopJourneyPageState extends State<DesktopJourneyPage> {
  late int currentSlideIndex, pageOffset;

  final _parentScrollViewController = ScrollController();

  final eng = Locale('en');
  late bool expandEntryContainer;

  // parent scroll view sections offets
  final citiesOffset = 1030;

  @override
  void initState() {
    expandEntryContainer = false;
    currentSlideIndex = 0;
    pageOffset = 0;

    _parentScrollViewController.addListener(() {
      print(_parentScrollViewController.offset);
      setState(() {
        pageOffset = _parentScrollViewController.offset.toInt();
      });
    });

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _parentScrollViewController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final dims = DimsConfig(context);
    final theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        controller: _parentScrollViewController,
        children: [
          Container(
            width: dims.deviceWidth,
            height: dims.deviceHeight * 1.1465,
            child: Stack(
              children: [
                Container(
                  width: dims.deviceWidth,
                  height: dims.deviceHeight * 1.1465,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Assets.natureBackgroundTwo.provider,
                          fit: BoxFit.cover)),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.1),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    height: dims.deviceHeight * 1.1465,
                    width: dims.deviceWidth,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.center,
                          end: Alignment.bottomCenter,
                          stops: [0.4, 0.9],
                          colors: [Colors.transparent, Colors.grey.shade100]),
                    ),
                  ),
                ),
                Positioned(
                  left: 0,
                  right: 0,
                  top: dims.deviceHeight * 0.25,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FadeInAnimation(
                        showendAfterDurationInMilliSecs: 2000,
                        durationInMilliSecs: 250,
                        child: AutoSizeText(
                          'welcome'.tr,
                          textDirection: getSuitableTextDirection(),
                          maxFontSize: 48,
                          textAlign: TextAlign.center,
                          minFontSize: 24,
                          style: TextStyle(
                              color: Colors.white.withOpacity(0.8),
                              fontSize: 32,
                              fontFamily: 'Quicksand'),
                        ),
                      ),
                      SizedBox(height: dims.deviceHeight * 0.05),
                      FadeInAnimation(
                        showendAfterDurationInMilliSecs: 2250,
                        durationInMilliSecs: 350,
                        child: AutoSizeText(
                          'newzealand'.tr,
                          textAlign: TextAlign.center,
                          maxFontSize: 160,
                          minFontSize: 96,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontSize: 112,
                              fontFamily: 'GlossAndBloom'),
                        ),
                      ),
                    ],
                  ),
                ),
                FourTabsContainer(
                  parentScrollController: _parentScrollViewController,
                  tabFourOffset: 0,
                  tabOneOffset: dims.height(1768),
                  tabTwoOffset: dims.height(2521),
                  tabThreeOffset: 0,
                ),
                JourneyPageAppBar(),
              ],
            ),
          ),
          Container(
            height: dims.deviceHeight * 1.2,
            width: dims.deviceWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AutoSizeText(
                  'categories'.tr,
                  style: TextStyle(
                      color: Colors.grey.shade900,
                      fontWeight: FontWeight.w900,
                      fontSize: 64,
                      fontFamily: 'Quicksand'),
                  textDirection: getSuitableTextDirection(),
                  maxFontSize: 96,
                  minFontSize: 48,
                  maxLines: 1,
                ),
                SizedBox(height: dims.height(24)),
                Container(
                  height: dims.height(4),
                  width: dims.deviceWidth * 0.1,
                  color: theme.accentColor,
                ),
                SizedBox(height: dims.height(24)),
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
                ),
              ],
            ),
          ),
          Container(
            width: dims.deviceWidth,
            height: dims.deviceHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: pageOffset >= citiesOffset
                  ? [
                      FadeInAnimation(
                        showendAfterDurationInMilliSecs: 250,
                        durationInMilliSecs: 250,
                        child: AutoSizeText(
                          '${"where_to_go".tr}${'question_mark'.tr}',
                          style: TextStyle(
                              color: theme.accentColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 64,
                              fontFamily: 'Quicksand'),
                          textDirection: getSuitableTextDirection(),
                          maxFontSize: 96,
                          minFontSize: 48,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(height: dims.deviceHeight * 0.1),
                      SizedBox(
                        height: dims.deviceHeight * 0.7,
                        width: dims.deviceWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Spacer(flex: 2),
                            AuckalndCityCard(),
                            Spacer(flex: 1),
                            CristchurchCityCard(),
                            Spacer(flex: 1),
                            WelingtonCityCard(),
                            Spacer(flex: 1),
                            HamiltonCityCard(),
                            Spacer(flex: 2),
                          ],
                        ),
                      ),
                    ]
                  : [],
            ),
          ),
          Container(
            width: dims.deviceWidth,
            height: dims.deviceHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: pageOffset >= citiesOffset
                  ? [
                      FadeInAnimation(
                        showendAfterDurationInMilliSecs: 250,
                        durationInMilliSecs: 250,
                        child: AutoSizeText(
                          '${"where_to_stay".tr}${'question_mark'.tr}',
                          style: TextStyle(
                              color: theme.accentColor,
                              fontWeight: FontWeight.w900,
                              fontSize: 64,
                              fontFamily: 'Quicksand'),
                          textDirection: getSuitableTextDirection(),
                          maxFontSize: 96,
                          minFontSize: 48,
                          maxLines: 1,
                        ),
                      ),
                      SizedBox(height: dims.deviceHeight * 0.1),
                      SizedBox(
                        height: dims.deviceHeight * 0.7,
                        width: dims.deviceWidth,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Spacer(flex: 2),
                            CordisHotelCard(),
                            Spacer(),
                            HitlonHotelCard(),
                            Spacer(),
                            NovotellHotelCard(),
                            Spacer(),
                            SofitellHotelCard(),
                            Spacer(flex: 2),
                          ],
                        ),
                      ),
                    ]
                  : [],
            ),
          ),
        ],
      ),
    );
  }
}
