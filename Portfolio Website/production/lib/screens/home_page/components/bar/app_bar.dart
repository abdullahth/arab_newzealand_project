import 'dart:ui';

import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:production/preferences/config_text_dir.dart';
import 'package:production/preferences/config_widgets_to_dims/config_widget_to_dims.dart';
import 'package:production/preferences/dims_config.dart';
import 'package:production/preferences/enums/assets.dart';
import 'package:production/preferences/enums/icons.dart';
import 'package:production/preferences/navigations/app_bar_pages.dart';
import 'package:production/preferences/navigations/social_media.dart';

class HomePageAppBar extends StatefulWidget {
  @override
  _HomePageAppBarState createState() => _HomePageAppBarState();
}

class _HomePageAppBarState extends State<HomePageAppBar> {
  List<String> pages = [
    'about',
    'activity',
    'investments',
    'partners',
    'services',
    'companies',
    'contact',
  ];
  @override
  Widget build(BuildContext context) {
    final dims = DimsConfig(context);
    final theme = Theme.of(context);
    return WidgetToDims(context,
        mobile: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.transparent,
          ),
          child: Drawer(
            child: Container(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    for (String pageName in pages) ...[
                      TextButton(
                        onPressed: () {
                          Get.back();
                          navigateToPage(pageName);
                        },
                        child: SizedBox(
                          width: double.infinity,
                          height: dims.deviceHeight * 0.1,
                          child: Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: dims.width(12)),
                                  child: AutoSizeText(
                                    pageName.tr,
                                    textDirection: getSuitableTextDirection(),
                                    textAlign: TextAlign.start,
                                    maxLines: 1,
                                    maxFontSize: 32,
                                    minFontSize: 8,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontFamily: 'Quicksand',
                                        fontWeight: FontWeight.w700),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      if (pageName != pages.last)
                        Divider(
                          height: dims.height(4),
                        ),
                    ],
                  ],
                ),
              ),
            ),
          ),
        ),
        tablet: Container(
          width: dims.deviceWidth,
          height: dims.deviceHeight * 0.15,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: dims.deviceWidth * 0.1),
              Container(
                height: dims.deviceHeight * 0.08,
                width: dims.deviceHeight * 0.08,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Assets.logoPlaceholderWhite.provider,
                        fit: BoxFit.contain)),
              ),
              Spacer(),
              IconButton(
                onPressed: () {
                  navigateToFacebook();
                },
                icon: Container(
                  height: dims.height(32),
                  width: dims.width(32),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: LocalIcons.facebook.provider,
                          fit: BoxFit.contain)),
                ),
              ),
              SizedBox(width: dims.width(16)),
              IconButton(
                onPressed: () {
                  navigateToTwitter();
                },
                icon: Container(
                  height: dims.height(32),
                  width: dims.width(32),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: LocalIcons.twitter.provider,
                          fit: BoxFit.contain)),
                ),
              ),
              SizedBox(width: dims.width(16)),
              IconButton(
                onPressed: () {
                  navigateToInstagram();
                },
                icon: Container(
                  height: dims.height(32),
                  width: dims.width(32),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: LocalIcons.instagram.provider,
                          fit: BoxFit.contain)),
                ),
              ),
              SizedBox(width: dims.width(16)),
              IconButton(
                onPressed: () {
                  navigateToLinkedin();
                },
                icon: Container(
                  height: dims.height(32),
                  width: dims.width(32),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: LocalIcons.linkedin.provider,
                          fit: BoxFit.contain)),
                ),
              ),
              SizedBox(width: dims.deviceWidth * 0.05),
              DropdownButton(
                  onChanged: (String? pageName) {
                    navigateToPage(pageName!);
                    setState(() {});
                  },
                  iconEnabledColor: Colors.white,
                  focusColor: Colors.white,
                  dropdownColor: Colors.transparent,
                  items: pages
                      .map((pageName) => DropdownMenuItem(
                            value: pageName,
                            child: AutoSizeText(
                              pageName.tr,
                              textDirection: getSuitableTextDirection(),
                              textAlign: TextAlign.center,
                              maxLines: 1,
                              maxFontSize: 32,
                              minFontSize: 8,
                              style: TextStyle(
                                  color: theme.primaryColor,
                                  fontFamily: 'Quicksand',
                                  fontWeight: FontWeight.w700),
                            ),
                          ))
                      .toList()),
              SizedBox(width: dims.deviceWidth * 0.1),
            ],
          ),
        ),
        // tablet: Container(),
        desktop: Container(
          width: dims.deviceWidth,
          height: dims.deviceHeight * 0.15,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Center(
                  child: Container(
                    height: dims.deviceHeight * 0.08,
                    width: dims.deviceHeight * 0.08,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: Assets.logoPlaceholderWhite.provider,
                            fit: BoxFit.contain)),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 6,
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      for (String pageName in pages) ...[
                        TextButton(
                          onPressed: () {
                            navigateToPage(pageName);
                          },
                          child: AutoSizeText(
                            pageName.tr,
                            textDirection: getSuitableTextDirection(),
                            textAlign: TextAlign.center,
                            maxLines: 1,
                            maxFontSize: 32,
                            minFontSize: 8,
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Quicksand',
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        if (pageName != pages.last) SizedBox(width: 24),
                      ],
                      Spacer(),
                      Expanded(
                        flex: 4,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            IconButton(
                              onPressed: () {
                                navigateToFacebook();
                              },
                              icon: Container(
                                height: dims.height(18),
                                width: dims.width(18),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: LocalIcons.facebook.provider,
                                        fit: BoxFit.contain)),
                              ),
                            ),
                            SizedBox(width: dims.width(16)),
                            IconButton(
                              onPressed: () {
                                navigateToTwitter();
                              },
                              icon: Container(
                                height: dims.height(18),
                                width: dims.width(18),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: LocalIcons.twitter.provider,
                                        fit: BoxFit.contain)),
                              ),
                            ),
                            SizedBox(width: dims.width(16)),
                            IconButton(
                              onPressed: () {
                                navigateToInstagram();
                              },
                              icon: Container(
                                height: dims.height(18),
                                width: dims.width(18),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: LocalIcons.instagram.provider,
                                        fit: BoxFit.contain)),
                              ),
                            ),
                            SizedBox(width: dims.width(16)),
                            IconButton(
                              onPressed: () {
                                navigateToLinkedin();
                              },
                              icon: Container(
                                height: dims.height(18),
                                width: dims.width(18),
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: LocalIcons.linkedin.provider,
                                        fit: BoxFit.contain)),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: dims.deviceWidth * 0.0125),
            ],
          ),
        ));
  }
}
