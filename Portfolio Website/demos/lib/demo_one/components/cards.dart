import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:indexed_list_view/indexed_list_view.dart';

class Cards extends StatefulWidget {
  const Cards({Key? key}) : super(key: key);

  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  final cardsData = [
    [
      "The NZ Kitchen.",
      AssetImage("cardCompTwo.jpg"),
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet tincidunt eros. Nullam vestibulum placerat faucibus. In ac enim bibendum, ultricies nisi quis, scelerisque risus. Phasellus condimentum pharetra ipsum eget eleifend. Sed eget congue erat, quis pulvinar tellus. Proin quis erat pretium, tempus sapien eget, mollis nisl. Suspendisse arcu dui, laoreet non lacinia ut, pulvinar eu lacus. Ut non augue eu tortor imperdiet eleifend. Aliquam suscipit consectetur erat, et laoreet erat. Ut hendrerit, urna eu condimentum lobortis, elit magna eleifend justo, sit amet ornare nibh sapien et arcu. Etiam ac feugiat metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus...."
    ],
    [
      "Decent Education.",
      AssetImage("cardCompOne.jpg"),
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet tincidunt eros. Nullam vestibulum placerat faucibus. In ac enim bibendum, ultricies nisi quis, scelerisque risus. Phasellus condimentum pharetra ipsum eget eleifend. Sed eget congue erat, quis pulvinar tellus. Proin quis erat pretium, tempus sapien eget, mollis nisl. Suspendisse arcu dui, laoreet non lacinia ut, pulvinar eu lacus. Ut non augue eu tortor imperdiet eleifend. Aliquam suscipit consectetur erat, et laoreet erat. Ut hendrerit, urna eu condimentum lobortis, elit magna eleifend justo, sit amet ornare nibh sapien et arcu. Etiam ac feugiat metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus...."
    ],
    [
      "Best earth's farms!",
      AssetImage("cardCompThree.jpg"),
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque sit amet tincidunt eros. Nullam vestibulum placerat faucibus. In ac enim bibendum, ultricies nisi quis, scelerisque risus. Phasellus condimentum pharetra ipsum eget eleifend. Sed eget congue erat, quis pulvinar tellus. Proin quis erat pretium, tempus sapien eget, mollis nisl. Suspendisse arcu dui, laoreet non lacinia ut, pulvinar eu lacus. Ut non augue eu tortor imperdiet eleifend. Aliquam suscipit consectetur erat, et laoreet erat. Ut hendrerit, urna eu condimentum lobortis, elit magna eleifend justo, sit amet ornare nibh sapien et arcu. Etiam ac feugiat metus. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus...."
    ],
  ];

  @override
  Widget build(BuildContext context) {
    final listViewCont = ScrollController();
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.5,
      child: Center(
        child: ListView.builder(
            itemCount: cardsData.length,
            controller: listViewCont,
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (_, i) {
              return Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuery.of(context).size.width * 0.025),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    width: MediaQuery.of(context).size.width * 0.4,
                    child: Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.5,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.15,
                            height: MediaQuery.of(context).size.height * 0.5,
                            color: Colors.black.withOpacity(0.2),
                          ),
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: cardsData[i][1] as ImageProvider)),
                        ),
                        Positioned(
                          right: 0,
                          child: ClipRect(
                              child: new BackdropFilter(
                                  filter: new ImageFilter.blur(
                                      sigmaX: 3, sigmaY: 3),
                                  child: new Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.25,
                                    height: MediaQuery.of(context).size.height *
                                        0.65,
                                    decoration: new BoxDecoration(
                                        color: Colors.grey.shade200
                                            .withOpacity(0.3)),
                                    child: Padding(
                                      padding: EdgeInsets.symmetric(
                                          vertical: 12, horizontal: 8),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            cardsData[i][0].toString(),
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 32,
                                                fontWeight: FontWeight.w900,
                                                fontFamily: 'Quicksand',
                                                letterSpacing: 4),
                                          ),
                                          AutoSizeText(
                                            cardsData[i][2].toString(),
                                            style: TextStyle(
                                              color: Colors.grey.shade300,
                                              fontSize: 12,
                                              fontFamily: 'Quicksand',
                                            ),
                                            maxLines: 12,
                                          ),
                                          Spacer(),
                                        ],
                                      ),
                                    ),
                                  ))),
                        ),
                        Positioned(
                            bottom: 8,
                            right: 12,
                            child: TextButton(
                              onPressed: () {},
                              child: AutoSizeText(
                                "Read more!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontFamily: 'Quicksand',
                                ),
                                maxLines: 1,
                              ),
                            )),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}
