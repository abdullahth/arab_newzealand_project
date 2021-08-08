import 'dart:ui';

import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

import 'components/app_bar.dart';
import 'components/cards.dart';
import 'components/left_side_bar.dart';
import 'components/rigt_side_bar.dart';

class DemoOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 2.7,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 2.7,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/2.jpg'),
                          fit: BoxFit.cover)),
                  child: Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.black.withOpacity(0.5),
                    child: Stack(
                      children: [
                        CustomAppBar(),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.4,
                          right: 0,
                          left: 0,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.2,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text(
                                    'New Zealand',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 96,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'GlossAndBloom',
                                        letterSpacing: 8),
                                  ),
                                  Spacer(),
                                  Text(
                                    'Arab Global Council for International Relations',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontFamily: 'Quicksand',
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.15,
                          right: 0,
                          child: RightSideBar(),
                        ),
                        Positioned(
                          top: MediaQuery.of(context).size.height * 0.15,
                          left: 0,
                          child: LeftSideBar(),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: MediaQuery.of(context).size.height, child: Cards()),
                Positioned(
                    top: MediaQuery.of(context).size.height * 1.7,
                    child: Container(
                      height: MediaQuery.of(context).size.height,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
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
                                    'Arab Global Council for Internationl Relations',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 88,
                                      fontWeight: FontWeight.w900,
                                      fontFamily: 'Quicksand',
                                    ),
                                    maxLines: 2,
                                  ),
                                  SizedBox(height: 12),
                                  AutoSizeText(
                                    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet tincidunt eros. Nullam vestibulum placerat faucibus. In ac enim bibendum, ultricies nisi quis, scelerisque risus. Phasellus condimentum pharetra ipsum eget eleifend. Sed eget congue erat, quis pulvinar tellus. Proin quis erat pretium, tempus sapien eget, mollis nisl. Suspendisse arcu dui, laoreet non lacinia ut, pulvinar eu lacus. Ut non augue eu tortor imperdiet eleifend. Aliquam suscipit consectetur erat, et laoreet erat. Ut hendrerit, urna eu condimentum lobortis, elit magna eleifend justo, sit amet ornare nibh sapien et arcu. Etiam ac feugiat metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet tincidunt eros. Nullam vestibulum placerat faucibus. In ac enim bibendum, ultricies nisi quis, scelerisque risus. Phasellus condimentum pharetra ipsum eget eleifend. Sed eget congue erat, quis pulvinar tellus. Proin quis erat pretium, tempus sapien eget, mollis nisl. Suspendisse arcu dui, laoreet non lacinia ut, pulvinar eu lacus. Ut non augue eu tortor imperdiet eleifend. Aliquam suscipit consectetur erat, et laoreet erat. Ut hendrerit, urna eu condimentum lobortis, elit magna eleifend justo, sit amet ornare nibh sapien et arcu. Etiam ac feugiat metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus",
                                    style: TextStyle(
                                      color: Colors.grey.shade300,
                                      fontSize: 12,
                                      fontFamily: 'Quicksand',
                                    ),
                                    maxLines: 12,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Expanded(
                            child: Stack(
                              children: [
                                Positioned(
                                  top: MediaQuery.of(context).size.height * 0.2,
                                  left: 0,
                                  right: 0,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image:
                                                        AssetImage('ceo.jpg'),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        SizedBox(height: 12),
                                        Text(
                                          'Mr. Fahed Fraij',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Quicksand',
                                          ),
                                        ),
                                        Text(
                                          'CEO & Founder',
                                          style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 16,
                                            fontFamily: 'Quicksand',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.of(context).size.height * 0.6,
                                  left:
                                      MediaQuery.of(context).size.width * 0.05,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image:
                                                        AssetImage('cto.jpg'),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        SizedBox(height: 12),
                                        Text(
                                          'Mr. Don Claason',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Quicksand',
                                          ),
                                        ),
                                        Text(
                                          'Executive Director',
                                          style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 16,
                                            fontFamily: 'Quicksand',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: MediaQuery.of(context).size.height * 0.6,
                                  right:
                                      MediaQuery.of(context).size.width * 0.05,
                                  child: SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.3,
                                    width:
                                        MediaQuery.of(context).size.width * 0.2,
                                    child: Column(
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(15),
                                          child: Container(
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.2,
                                            decoration: BoxDecoration(
                                                image: DecorationImage(
                                                    image:
                                                        AssetImage('cao.jpg'),
                                                    fit: BoxFit.cover)),
                                          ),
                                        ),
                                        SizedBox(height: 12),
                                        Text(
                                          'Mr. Rashed Maged',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w900,
                                            fontFamily: 'Quicksand',
                                          ),
                                        ),
                                        Text(
                                          'CAO',
                                          style: TextStyle(
                                            color: Colors.grey.shade400,
                                            fontSize: 16,
                                            fontFamily: 'Quicksand',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
