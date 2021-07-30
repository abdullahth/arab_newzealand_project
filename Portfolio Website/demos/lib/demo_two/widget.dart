import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

import 'components/app_bar.dart';

class DemoTwo extends StatefulWidget {
  @override
  _DemoTwoState createState() => _DemoTwoState();
}

class _DemoTwoState extends State<DemoTwo> {
  final accentColor = Color(0xFFeab71e);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                DemoTwoAppBar(),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              vertical:
                                  MediaQuery.of(context).size.height * 0.1,
                              horizontal:
                                  MediaQuery.of(context).size.width * 0.1),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              AutoSizeText(
                                'New Zealand',
                                style: TextStyle(
                                  color: accentColor,
                                  fontSize: 112,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'GlossAndBloom',
                                ),
                                maxLines: 1,
                              ),
                              SizedBox(height: 12),
                              AutoSizeText(
                                'Arab Global Council for Internationl Relations',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontSize: 32,
                                  fontWeight: FontWeight.w900,
                                  fontFamily: 'Quicksand',
                                ),
                                maxLines: 1,
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuery.of(context).size.height * 0.1,
                            horizontal:
                                MediaQuery.of(context).size.width * 0.05),
                        child: Container(
                          width: double.infinity,
                          height: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image:
                                      AssetImage('vectors/auckland_three.png'),
                                  fit: BoxFit.contain)),
                        ),
                      ))
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
