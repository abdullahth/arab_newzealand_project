import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color accentColor = Color(0xFF022859);

    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            Positioned(
              right: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height,
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.6),
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.1,
                        right: MediaQuery.of(context).size.width * 0.1),
                    child: SizedBox(
                      height: double.infinity,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(12),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * 0.175,
                              height: MediaQuery.of(context).size.width * 0.025,
                              child: Row(
                                children: [
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.025,
                                    height: MediaQuery.of(context).size.width *
                                        0.025,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(
                                                'athena-symbol-white.png'))),
                                  ),
                                  SizedBox(width: 8),
                                  AutoSizeText.rich(
                                    TextSpan(
                                        text:
                                            'Arab Global Council for \nInternational Relations'),
                                    maxFontSize: 32,
                                    minFontSize: 16,
                                    maxLines: 2,
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Quicksand'),
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("1.jpg"), fit: BoxFit.cover)),
              ),
            ),
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.45,
                height: MediaQuery.of(context).size.height,
                color: accentColor,
              ),
            ),
            Positioned(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.15,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('sm-icons/facebook.png'),
                                    fit: BoxFit.contain)),
                          ),
                          // SizedBox(height: 32),
                          Spacer(flex: 1),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('sm-icons/instagram.png'),
                                    fit: BoxFit.contain)),
                          ),
                          // SizedBox(height: 32),
                          Spacer(flex: 1),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('sm-icons/linkedin.png'),
                                    fit: BoxFit.contain)),
                          ),
                          // SizedBox(height: 32),
                          Spacer(flex: 1),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage('sm-icons/twitter.png'),
                                    fit: BoxFit.contain)),
                          ),
                        ],
                      ),
                      Spacer(),
                      TextButton(
                        onPressed: null,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.1,
                          width: MediaQuery.of(context).size.width * 0.15,
                          child: Center(
                              child: AutoSizeText.rich(
                            TextSpan(text: 'News >'),
                            maxFontSize: 48,
                            minFontSize: 24,
                            maxLines: 1,
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w900,
                                fontFamily: 'Quicksand'),
                          )),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.15,
                      )
                    ],
                  ),
                ),
                decoration: BoxDecoration(
                    color: Colors.grey.shade900,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black26,
                          blurRadius: 5,
                          offset: Offset(5, 0))
                    ]),
              ),
            ),
            Positioned(
                width: MediaQuery.of(context).size.width * 0.45,
                top: MediaQuery.of(context).size.height * 0.2,
                child: AutoSizeText.rich(
                  TextSpan(
                    text: 'New \nZealand\n',
                    style: TextStyle(
                        color: Colors.black.withOpacity(0.1),
                        fontWeight: FontWeight.w900,
                        fontFamily: 'Quicksand',
                        fontSize: 192),
                  ),
                  maxLines: 2,
                )),
            Positioned(
              left: MediaQuery.of(context).size.width * 0.1,
              top: MediaQuery.of(context).size.height * 0.3,
              child: AutoSizeText.rich(
                  TextSpan(
                    children: [
                      TextSpan(
                        text: 'New \nZealand\n',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontFamily: 'Quicksand',
                            fontSize: 96),
                      ),
                      TextSpan(
                        text: 'Arab Global Council for International Relations',
                        style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Quicksand',
                            fontSize: 18),
                      ),
                    ],
                  ),
                  textAlign: TextAlign.start),
            ),
            Positioned(
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width * 0.08,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 5,
                        offset: Offset(-5, 0))
                  ],
                  color: Colors.grey.shade900,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: double.infinity,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.details_outlined,
                                size: 32,
                                color: Colors.white,
                              ),
                              AutoSizeText.rich(
                                TextSpan(text: 'About'),
                                maxFontSize: 16,
                                minFontSize: 8,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Quicksand'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: double.infinity,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.book_rounded,
                                size: 32,
                                color: Colors.white,
                              ),
                              AutoSizeText.rich(
                                TextSpan(text: 'Education'),
                                maxFontSize: 16,
                                minFontSize: 8,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Quicksand'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: double.infinity,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.tour,
                                size: 32,
                                color: Colors.white,
                              ),
                              AutoSizeText.rich(
                                TextSpan(text: 'Tourism'),
                                maxFontSize: 16,
                                minFontSize: 8,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Quicksand'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: double.infinity,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.business,
                                size: 32,
                                color: Colors.white,
                              ),
                              AutoSizeText.rich(
                                TextSpan(text: 'Business'),
                                maxFontSize: 16,
                                minFontSize: 8,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Quicksand'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: double.infinity,
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 32,
                                color: Colors.white,
                              ),
                              AutoSizeText.rich(
                                TextSpan(text: 'Cities'),
                                maxFontSize: 16,
                                minFontSize: 8,
                                maxLines: 1,
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900,
                                    fontFamily: 'Quicksand'),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.92,
                height: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    border: Border(
                        top: BorderSide(width: 0.15, color: Colors.white))),
                child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton(
                      onPressed: null,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 0.15, color: Colors.white),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: Center(
                            child: AutoSizeText.rich(
                          TextSpan(text: 'About'),
                          maxFontSize: 16,
                          minFontSize: 8,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Quicksand'),
                        )),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 0.15, color: Colors.white),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: Center(
                            child: AutoSizeText.rich(
                          TextSpan(text: 'Investments'),
                          maxFontSize: 16,
                          minFontSize: 8,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Quicksand'),
                        )),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 0.15, color: Colors.white),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.15,
                        child: Center(
                            child: AutoSizeText.rich(
                          TextSpan(text: 'Projects'),
                          maxFontSize: 16,
                          minFontSize: 8,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Quicksand'),
                        )),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 0.15, color: Colors.white),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.1565,
                        child: Center(
                            child: AutoSizeText.rich(
                          TextSpan(text: 'Contact'),
                          maxFontSize: 16,
                          minFontSize: 8,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Quicksand'),
                        )),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border(
                            right: BorderSide(width: 0.15, color: Colors.white),
                          ),
                        ),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.1565,
                        child: Center(
                            child: AutoSizeText.rich(
                          TextSpan(text: 'Partners'),
                          maxFontSize: 16,
                          minFontSize: 8,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Quicksand'),
                        )),
                      ),
                    ),
                    TextButton(
                      onPressed: null,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: MediaQuery.of(context).size.width * 0.1565,
                        child: Center(
                            child: AutoSizeText.rich(
                          TextSpan(text: 'Services'),
                          maxFontSize: 16,
                          minFontSize: 8,
                          maxLines: 1,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w900,
                              fontFamily: 'Quicksand'),
                        )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
