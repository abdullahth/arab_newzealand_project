import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:production_v2/prefernces/enums/assets.dart';

import 'package:get/get.dart';
import 'package:production_v2/prefernces/enums/icons.dart';
import 'package:production_v2/prefernces/enums/social_media.dart';

class LandingPageTabletAppBar extends StatefulWidget {
  Map<String, Function> tabsCallback;
  LandingPageTabletAppBar({
    required this.tabsCallback,
  });

  @override
  _LandingPageTabletAppBarState createState() =>
      _LandingPageTabletAppBarState();
}

class _LandingPageTabletAppBarState extends State<LandingPageTabletAppBar> {
  @override
  Widget build(BuildContext context) {
    final AdvancedDevicesDimsConfig dims = AdvancedDevicesDimsConfig(context);
    final ThemeData theme = Theme.of(context);
    return SizedBox(
      width: dims.deviceWidth,
      height: dims.deviceHeight * 0.15,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: dims.deviceWidth * 0.025),
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                width: dims.deviceHeight * 0.28,
                height: dims.deviceHeight * 0.14,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Assets.logoWhiteTypo.provider,
                        fit: BoxFit.contain)),
              ),
            ),
          ),
          Spacer(flex: 1),
          Expanded(
            flex: 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      SocialMediaCallback.facebook.callback();
                    },
                    icon: Container(
                      height: dims.deviceHeight * 0.025,
                      width: dims.deviceHeight * 0.025,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AppIcons.facebook.provider,
                              fit: BoxFit.fill)),
                    )),
                SizedBox(width: dims.configWidth(12)),
                IconButton(
                    onPressed: () {
                      SocialMediaCallback.instagram.callback();
                    },
                    icon: Container(
                      height: dims.deviceHeight * 0.025,
                      width: dims.deviceHeight * 0.025,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AppIcons.instagram.provider,
                              fit: BoxFit.fill)),
                    )),
                SizedBox(width: dims.configWidth(12)),
                IconButton(
                    onPressed: () {
                      SocialMediaCallback.twitter.callback();
                    },
                    icon: Container(
                      height: dims.deviceHeight * 0.025,
                      width: dims.deviceHeight * 0.025,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AppIcons.twitter.provider,
                              fit: BoxFit.fill)),
                    )),
                SizedBox(width: dims.configWidth(12)),
                IconButton(
                    onPressed: () {
                      SocialMediaCallback.linkedIn.callback();
                    },
                    icon: Container(
                      height: dims.deviceHeight * 0.025,
                      width: dims.deviceHeight * 0.025,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AppIcons.linkedin.provider,
                              fit: BoxFit.fill)),
                    )),
                SizedBox(width: dims.configWidth(24)),
                DropdownButton(
                    dropdownColor: theme.scaffoldBackgroundColor,
                    iconEnabledColor: theme.accentColor,
                    onChanged: (v) {
                      final callback = widget.tabsCallback["$v"];
                      callback!();
                    },
                    items: [
                      'about',
                      'services',
                      'testimonials',
                      'contact',
                    ]
                        .map(
                          (tab) => DropdownMenuItem(
                            value: tab,
                            child: AutoSizeText(
                              tab.tr,
                              style: TextStyle(
                                color: theme.accentColor,
                                fontSize: 16,
                                fontWeight: FontWeight.normal,
                              ),
                              maxLines: 1,
                              maxFontSize: 32,
                              minFontSize: 16,
                            ),
                          ),
                        )
                        .toList()),
              ],
            ),
          ),
          SizedBox(width: dims.deviceWidth * 0.025),
        ],
      ),
    );
  }
}
