import 'dart:async';

import 'package:flutter/material.dart';

class FadeInAnimation extends StatefulWidget {
  final Widget child;
  final int durationInMilliSecs, showendAfterDurationInMilliSecs;
  FadeInAnimation(
      {required this.child,
      required this.durationInMilliSecs,
      required this.showendAfterDurationInMilliSecs});
  @override
  _FadeInAnimationState createState() => _FadeInAnimationState();
}

class _FadeInAnimationState extends State<FadeInAnimation>
    with TickerProviderStateMixin {
  late bool visible;
  @override
  void initState() {
    visible = false;
    super.initState();

    Timer.periodic(
        Duration(milliseconds: widget.showendAfterDurationInMilliSecs), (t) {
      setState(() {
        visible = true;
      });
      t.cancel();
    });
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedOpacity(
        curve: Curves.easeIn,
        child: widget.child,
        opacity: visible ? 1 : 0,
        duration: Duration(milliseconds: widget.durationInMilliSecs));
  }
}
