import 'dart:async';
import 'package:get/get.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:production/preferences/consts.dart';
import 'package:production/preferences/dims_config.dart';

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
                                          "${'in'.tr} ${'newzealand'.tr}$questionMark",
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
                                widget.parentScrollController.animateTo(
                                    widget.tabTwoOffset,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease);
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
                                          "${'in'.tr} ${'newzealand'.tr}$questionMark",
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
                                widget.parentScrollController.animateTo(
                                    widget.tabThreeOffset,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease);
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
                                          "${'in'.tr} ${'newzealand'.tr}$questionMark",
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
                                widget.parentScrollController.animateTo(
                                    widget.tabFourOffset,
                                    duration: Duration(milliseconds: 500),
                                    curve: Curves.ease);
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
                                          "${'will_you_need'.tr}$questionMark",
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
