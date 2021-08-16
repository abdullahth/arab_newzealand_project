import 'dart:async';

import 'package:flutter/material.dart';
import 'package:production/preferences/dims_config.dart';
import 'package:production/preferences/enums/assets.dart';

class BouncingTransitionWidget extends StatefulWidget {
  @override
  _BouncingTransitionWidgetState createState() =>
      _BouncingTransitionWidgetState();
}

class _BouncingTransitionWidgetState extends State<BouncingTransitionWidget> {
  late Timer timer;
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
    Timer.periodic(Duration(milliseconds: 1000), (_) {
      setState(() {
        expandAssets = !expandAssets!;
        timer = _;
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    final dims = DimsConfig(context);
    final theme = Theme.of(context);
    return Scaffold(
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
                      AnimatedContainer(
                        width:
                            expandAssets ?? true ? dims.deviceWidth * 0.08 : 0,
                        height:
                            expandAssets ?? true ? dims.deviceWidth * 0.08 : 0,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.bounceInOut,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              image: Assets.logo.provider, fit: BoxFit.contain),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )));
  }
}
