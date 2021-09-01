import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:dims_config/dims_config.dart';
import 'package:flutter/material.dart';
import 'package:production_v2/prefernces/enums/assets.dart';

import 'package:get/get.dart';
import 'package:production_v2/prefernces/enums/icons.dart';
import 'package:production_v2/prefernces/enums/social_media.dart';

class LandingPageDesktopAppBar extends StatefulWidget {
  Map<String, Function> tabsCallback;
  LandingPageDesktopAppBar({
    required this.tabsCallback,
  });

  @override
  _LandingPageDesktopAppBarState createState() =>
      _LandingPageDesktopAppBarState();
}

class _LandingPageDesktopAppBarState extends State<LandingPageDesktopAppBar> {
  @override
  Widget build(BuildContext context) {
    final AdvancedDevicesDimsConfig dims = AdvancedDevicesDimsConfig(context);
    final ThemeData theme = Theme.of(context);
    return SizedBox(
      height: dims.deviceHeight * 0.15,
      width: dims.deviceWidth,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Center(
              child: Container(
                height: dims.deviceHeight * 0.13,
                width: dims.deviceHeight * 0.26,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: Assets.logoWhiteTypo.provider,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
              flex: 6,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {
                      final callback = widget.tabsCallback['about'];
                      callback!();
                    },
                    child: AutoSizeText(
                      'about'.tr,
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
                  SizedBox(width: dims.deviceWidth * 0.05),
                  TextButton(
                    onPressed: () {
                      final callback = widget.tabsCallback['vision'];
                      callback!();
                    },
                    child: AutoSizeText(
                      'our_vision'.tr,
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
                  SizedBox(width: dims.deviceWidth * 0.05),
                  TextButton(
                    onPressed: () {
                      final callback = widget.tabsCallback['industries'];
                      callback!();
                    },
                    child: AutoSizeText(
                      'industries'.tr,
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
                  SizedBox(width: dims.deviceWidth * 0.05),
                  TextButton(
                    onPressed: () {
                      final callback = widget.tabsCallback['why_us'];
                      callback!();
                    },
                    child: AutoSizeText(
                      "${'why_us'.tr}${'question_mark'.tr}",
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
                  SizedBox(width: dims.deviceWidth * 0.05),
                  TextButton(
                    onPressed: () {
                      final callback = widget.tabsCallback['contact'];
                      callback!();
                    },
                    child: AutoSizeText(
                      'contact'.tr,
                      style: TextStyle(
                        color: theme.accentColor,
                        fontSize: 16,
                        fontWeight: FontWeight.normal,
                      ),
                      maxLines: 1,
                      maxFontSize: 32,
                      minFontSize: 16,
                    ),
                  )
                ],
              )),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 2),
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
                  Spacer(),
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
                  Spacer(),
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
                  Spacer(),
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
                  Spacer(flex: 2),
                ],
              ))
        ],
      ),
    );
  }
}
