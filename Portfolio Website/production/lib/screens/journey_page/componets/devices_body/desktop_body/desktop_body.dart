import 'dart:async';
import 'dart:ui';

import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:production/animations/fade_in/fade_in.dart';
import 'package:production/models/category.dart';
import 'package:production/preferences/config_text_dir.dart';
import 'package:production/preferences/dims_config.dart';
import 'package:production/preferences/enums/videos.dart';
import 'package:production/screens/journey_page/componets/app_bar/app_bar.dart';

import 'package:get/get.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/category_card/category_card.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/cities_cards/auckland/auckland.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/cities_cards/christchurch/christchurch.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/cities_cards/wellington/wellington.dart';
import 'package:production/screens/journey_page/componets/devices_body/componets/cities_cards/hamilton/hamilton.dart';
import 'package:video_player/video_player.dart';

class DesktopJourneyPage extends StatefulWidget {
  @override
  _DesktopJourneyPageState createState() => _DesktopJourneyPageState();
}

class _DesktopJourneyPageState extends State<DesktopJourneyPage> {
  late int currentSlideIndex, pageOffset;
  final backgroundVideoController = VideoAsset.lakeTwo.controller;

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
    backgroundVideoController
      ..addListener(() {
        setState(() {});
      })
      ..initialize().then((value) {
        setState(() {});
        if (backgroundVideoController.value.isInitialized) {
          setState(() {});
          // TODO: backgroundVideoController.play();
          backgroundVideoController.setLooping(true);

          try {} catch (e) {
            print(e.toString());
          }
        }
      }).catchError((error) {
        print(error.toString());
      });

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
    backgroundVideoController.dispose();
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
                  child: VideoPlayer(backgroundVideoController),
                ),
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.2),
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
                  tabTwoOffset: 0,
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
                      color: theme.accentColor,
                      fontWeight: FontWeight.w900,
                      fontSize: 64,
                      fontFamily: 'Quicksand'),
                  textDirection: getSuitableTextDirection(),
                  maxFontSize: 96,
                  minFontSize: 48,
                  maxLines: 1,
                ),
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
                          '${"where_to_go".tr}?',
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
          )
        ],
      ),
    );
  }
}

class FourTabsContainer extends StatefulWidget {
  final ScrollController parentScrollController;
  final double tabOneOffset, tabTwoOffset, tabThreeOffset, tabFourOffset;
  FourTabsContainer({
    required this.parentScrollController,
    required this.tabOneOffset,
    required this.tabTwoOffset,
    required this.tabThreeOffset,
    required this.tabFourOffset,
  });
  @override
  _FourTabsContainerState createState() => _FourTabsContainerState();
}

class _FourTabsContainerState extends State<FourTabsContainer>
    with AutomaticKeepAliveClientMixin {
  final eng = Locale('en');
  late bool expandEntryContainer;

  @override
  void initState() {
    super.initState();
    expandEntryContainer = false;
  }

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    Timer.periodic(Duration(milliseconds: 2750), (timer) {
      setState(() {
        expandEntryContainer = true;
      });
      timer.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    final dims = DimsConfig(context);
    final theme = Theme.of(context);
    return Container(
      width: dims.deviceWidth,
      height: dims.deviceHeight,
      child: Padding(
        padding: EdgeInsets.symmetric(
            vertical: dims.deviceHeight * 0.05,
            horizontal: dims.deviceWidth * 0.05),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 4),
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    offset: Offset(0, dims.height(12)),
                    blurRadius: dims.width(15),
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(dims.width(25)),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 600),
                  curve: Curves.ease,
                  color: Colors.grey.shade200,
                  height: dims.deviceHeight * 0.08,
                  width: !expandEntryContainer ? 0 : dims.deviceWidth * 0.6,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: dims.height(8),
                        horizontal: dims.deviceWidth * 0.025),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: dims.width(8)),
                            child: InkWell(
                              onTap: () {
                                widget.parentScrollController.animateTo(
                                    widget.tabOneOffset,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease);
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.location_on,
                                      color: theme.accentColor,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          "${'where_to_go'.tr}",
                                          textAlign: TextAlign.start,
                                          maxFontSize: 24,
                                          minFontSize: 8,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 16,
                                              fontFamily: 'Quicksand'),
                                        ),
                                        SizedBox(height: dims.height(4)),
                                        AutoSizeText(
                                          "${'in'.tr} ${'newzealand'.tr}${Get.locale == eng ? '?' : '؟'}",
                                          textAlign: TextAlign.start,
                                          maxFontSize: 24,
                                          minFontSize: 8,
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 12,
                                              fontFamily: 'Quicksand'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: dims.width(8)),
                            child: InkWell(
                              onTap: () {
                                // TODO: Scroll to places
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.hotel_outlined,
                                      color: theme.accentColor,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          "${'where_to_stay'.tr}",
                                          textAlign: TextAlign.start,
                                          maxFontSize: 24,
                                          minFontSize: 8,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 16,
                                              fontFamily: 'Quicksand'),
                                        ),
                                        SizedBox(height: dims.height(4)),
                                        AutoSizeText(
                                          "${'in'.tr} ${'newzealand'.tr}${Get.locale == eng ? '?' : '؟'}",
                                          textAlign: TextAlign.start,
                                          maxFontSize: 24,
                                          minFontSize: 8,
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 12,
                                              fontFamily: 'Quicksand'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: dims.width(8)),
                            child: InkWell(
                              onTap: () {
                                // TODO: Scroll to places
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.restaurant,
                                      color: theme.accentColor,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          "${'where_to_eat'.tr}",
                                          textAlign: TextAlign.start,
                                          maxFontSize: 24,
                                          minFontSize: 8,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 16,
                                              fontFamily: 'Quicksand'),
                                        ),
                                        SizedBox(height: dims.height(4)),
                                        AutoSizeText(
                                          "${'in'.tr} ${'newzealand'.tr}${Get.locale == eng ? '?' : '؟'}",
                                          textAlign: TextAlign.start,
                                          maxFontSize: 24,
                                          minFontSize: 8,
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 12,
                                              fontFamily: 'Quicksand'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding:
                                EdgeInsets.symmetric(horizontal: dims.width(8)),
                            child: InkWell(
                              onTap: () {
                                // TODO: Scroll to places
                              },
                              child: Container(
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.room_service,
                                      color: theme.accentColor,
                                    ),
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        AutoSizeText(
                                          "${'what_services'.tr}",
                                          textAlign: TextAlign.start,
                                          maxFontSize: 24,
                                          minFontSize: 8,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontWeight: FontWeight.w900,
                                              fontSize: 16,
                                              fontFamily: 'Quicksand'),
                                        ),
                                        SizedBox(height: dims.height(4)),
                                        AutoSizeText(
                                          "${'will_you_need'.tr}${Get.locale == eng ? '?' : '؟'}",
                                          textAlign: TextAlign.start,
                                          maxFontSize: 24,
                                          minFontSize: 8,
                                          style: TextStyle(
                                              color: Colors.grey.shade700,
                                              fontSize: 12,
                                              fontFamily: 'Quicksand'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Spacer(flex: 1),
          ],
        ),
      ),
    );
  }

  @override
  bool get wantKeepAlive => true;
}
