import 'package:flutter/material.dart';
import '../dims_config.dart';

class WidgetToDims extends StatefulWidget {
  BuildContext screenContext;
  Widget mobile, desktop;
  Widget? tablet;
  WidgetToDims(
    this.screenContext, {
    required this.mobile,
    required this.desktop,
    this.tablet,
  });

  @override
  _WidgetToDimsState createState() => _WidgetToDimsState();
}

class _WidgetToDimsState extends State<WidgetToDims> {
  @override
  Widget build(BuildContext _) {
    final dims = DimsConfig(widget.screenContext);
    return dims.isMobile
        ? widget.mobile
        : dims.isTablet && widget.tablet != null
            ? widget.tablet!
            : widget.desktop;
  }
}
