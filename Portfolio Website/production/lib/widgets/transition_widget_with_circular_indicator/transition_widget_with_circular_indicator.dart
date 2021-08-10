import 'dart:async';

import 'package:flutter/material.dart';
import 'package:production/preferences/dims_config.dart';
import 'package:production/preferences/enums/assets.dart';
import 'package:production/preferences/responsive.dart';

class CircularProgressTransitionWidget extends StatefulWidget {
  @override
  _CircularProgressTransitionWidgetState createState() =>
      _CircularProgressTransitionWidgetState();
}

class _CircularProgressTransitionWidgetState
    extends State<CircularProgressTransitionWidget> {
  bool? expandAssets, expandFirstContainer;
  bool? expandLastContainer;
  @override
  void initState() {
    setState(() {
      expandLastContainer = false;
      expandFirstContainer = false;
      expandAssets = false;
    });
    super.initState();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    Timer.periodic(Duration(milliseconds: 200), (_) {
      setState(() {
        expandFirstContainer = true;
      });
      _.cancel();
    });
    Timer.periodic(Duration(milliseconds: 300), (_) {
      setState(() {
        expandLastContainer = true;
      });
      _.cancel();
    });
    Future.delayed(Duration(milliseconds: 200));
    Timer.periodic(Duration(milliseconds: 400), (_) {
      setState(() {
        expandAssets = true;
      });
      _.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    final dims = DimsConfig(context);
    final theme = Theme.of(context);
    return ResponsiveWidget(context,
        mobileWidget: Scaffold(),
        desktopWidget: Scaffold(
          body: AnimatedContainer(
            alignment: Alignment.centerLeft,
            transformAlignment: Alignment.centerRight,
            curve: Curves.easeIn,
            duration: Duration(milliseconds: 400),
            width: expandFirstContainer ?? true ? dims.deviceWidth : 0,
            height: dims.deviceHeight,
            color: theme.primaryColor,
            child: AnimatedContainer(
              curve: Curves.easeIn,
              duration: Duration(milliseconds: 400),
              width: expandLastContainer ?? false ? dims.deviceWidth : 0,
              height: dims.deviceHeight,
              color: theme.scaffoldBackgroundColor,
              child: Center(
                child: SizedBox(
                  width: dims.deviceWidth,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: dims.deviceWidth * 0.12,
                            width: dims.deviceWidth * 0.12,
                            child: CircularProgressIndicator(
                              strokeWidth: dims.width(15),
                              valueColor: AlwaysStoppedAnimation(
                                  Theme.of(context).primaryColor),
                            ),
                          ),
                          Positioned(
                            left: dims.width(30),
                            top: dims.height(30),
                            child: AnimatedContainer(
                              width: expandAssets ?? true
                                  ? dims.deviceWidth * 0.08
                                  : 0,
                              height: expandAssets ?? true
                                  ? dims.deviceWidth * 0.08
                                  : 0,
                              duration: Duration(milliseconds: 500),
                              curve: Curves.bounceInOut,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: Assets.logoPlaceholder.provider,
                                    fit: BoxFit.contain),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        )).build();
  }
}
