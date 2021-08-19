import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:production/preferences/config_widgets_to_dims/config_widget_to_dims.dart';
import 'package:production/preferences/dims_config.dart';
import 'package:production/preferences/enums/assets.dart';
import 'package:production/preferences/enums/icons.dart';
import 'package:production/preferences/navigations/social_media.dart';
import 'package:production/widgets/transition_widget_bouncing/transition_widget_bouncing.dart';

class JourneyPageAppBar extends StatefulWidget {
  @override
  _JourneyPageAppBarState createState() => _JourneyPageAppBarState();
}

class _JourneyPageAppBarState extends State<JourneyPageAppBar> {
  @override
  Widget build(BuildContext context) {
    final dims = DimsConfig(context);
    final theme = Theme.of(context);
    return WidgetToDims(
      context,
      mobile: Container(
        width: dims.deviceWidth,
        height: dims.deviceHeight * 0.1,
      ),
      desktop: Container(
        width: dims.deviceWidth,
        height: dims.deviceHeight * 0.15,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(width: dims.deviceWidth * 0.0125),
            InkWell(
              onTap: () async {
                Get.to(BouncingTransitionWidget());
                await Future.delayed(Duration(milliseconds: 5000));
                Get.offNamed('/');
              },
              child: Container(
                height: dims.deviceHeight * 0.08,
                width: dims.deviceHeight * 0.08,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: Assets.logoWhiteTypo.provider,
                        fit: BoxFit.contain)),
              ),
            ),
            Spacer(),
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
            SizedBox(width: dims.width(16)),
            SizedBox(
                height: dims.height(24),
                child:
                    VerticalDivider(color: Colors.white, width: dims.width(4))),
            SizedBox(width: dims.width(16)),
            IconButton(
                onPressed: () async {
                  Get.to(BouncingTransitionWidget());
                  await Future.delayed(Duration(milliseconds: 5000));
                  Get.offNamed('/');
                },
                icon: Icon(Icons.home,
                    color: Colors.white, size: dims.width(24))),
            SizedBox(width: dims.deviceWidth * 0.0125),
          ],
        ),
      ),
    );
  }
}
