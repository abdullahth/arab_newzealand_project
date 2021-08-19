import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:production/preferences/dims_config.dart';
import 'package:production/preferences/enums/assets.dart';

class HamiltonCityCard extends StatefulWidget {
  @override
  _HamiltonCityCardState createState() => _HamiltonCityCardState();
}

class _HamiltonCityCardState extends State<HamiltonCityCard> {
  late bool hover;
  @override
  void initState() {
    hover = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final DimsConfig dims = DimsConfig(context);
    return SizedBox(
        width: dims.deviceWidth * 0.2,
        height: dims.deviceHeight * 0.7,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {},
              onHover: (value) {
                setState(() {
                  hover = value;
                });
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  dims.width(15),
                ),
                child: AnimatedContainer(
                  duration: Duration(milliseconds: 250),
                  curve: Curves.ease,
                  width:
                      hover ? dims.deviceWidth * 0.25 : dims.deviceWidth * 0.2,
                  height: hover
                      ? dims.deviceHeight * 0.65
                      : dims.deviceHeight * 0.6,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Assets.hamiltonCity.provider,
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        stops: [0, 0.7],
                        colors: [
                          Colors.transparent,
                          Colors.black.withOpacity(0.75)
                        ],
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          vertical: dims.height(12), horizontal: dims.width(8)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Spacer(),
                          AutoSizeText(
                            'hamilton'.tr,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Quicksand',
                                fontSize: 32),
                            maxFontSize: 48,
                            minFontSize: 24,
                            maxLines: 1,
                          ),
                          SizedBox(height: dims.height(12)),
                          AutoSizeText(
                            'hamilton_brief'.tr,
                            style: TextStyle(
                                color: Colors.white54,
                                fontFamily: 'Quicksand',
                                fontSize: 16),
                            maxFontSize: 24,
                            minFontSize: 8,
                            maxLines: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
          ],
        ));
  }
}
