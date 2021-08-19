import 'package:flutter/material.dart';
import 'package:production/preferences/dims_config.dart';

class TabletJourneyPage extends StatefulWidget {
  @override
  _TabletJourneyPageState createState() => _TabletJourneyPageState();
}

class _TabletJourneyPageState extends State<TabletJourneyPage> {
  late int currentSlideIndex;

  @override
  void initState() {
    currentSlideIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dims = DimsConfig(context);
    final theme = Theme.of(context);
    return Scaffold();
  }
}
