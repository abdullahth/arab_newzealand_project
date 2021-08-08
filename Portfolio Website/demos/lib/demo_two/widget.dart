import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

import 'components/app_bar.dart';

class DemoTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: ListView(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 1,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('6.jpg'), fit: BoxFit.cover)),
                  child: Container(
                    height: double.infinity,
                    width: MediaQuery.of(context).size.height,
                    color: Colors.black.withOpacity(0.5),
                    child: Stack(
                      children: [
                        CustomAppBar(),
                        Positioned(
                          bottom: MediaQuery.of(context).size.width * 0.05,
                          left: 12,
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.6,
                            height: MediaQuery.of(context).size.height * 0.3,
                            child: Center(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'New Zealand',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 96,
                                        fontWeight: FontWeight.w900,
                                        fontFamily: 'Quicksand',
                                        letterSpacing: 8),
                                  ),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    child: Text(
                                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nec metus in neque accumsan consectetur id quis magna. Duis ultricies, odio sed semper semper, velit lacus ornare dolor, quis porttitor turpis eros sed leo.',
                                      style: TextStyle(
                                        color: Colors.white.withOpacity(0.8),
                                        fontSize: 12,
                                        fontFamily: 'Quicksand',
                                      ),
                                    ),
                                  ),
                                  Spacer(),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * 0.1,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Text(
                                          '#nz',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            fontSize: 12,
                                            fontFamily: 'Quicksand',
                                          ),
                                        ),
                                        Text(
                                          '#mountains',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            fontSize: 12,
                                            fontFamily: 'Quicksand',
                                          ),
                                        ),
                                        Text(
                                          '#aroki',
                                          style: TextStyle(
                                            color:
                                                Colors.white.withOpacity(0.8),
                                            fontSize: 12,
                                            fontFamily: 'Quicksand',
                                          ),
                                        ),
                                      ],
                                    ),
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
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'Strong Education System',
                        style: TextStyle(
                          color: Colors.blue.shade900,
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
                          color: Colors.grey.shade800,
                          fontSize: 12,
                          fontFamily: 'Quicksand',
                        ),
                        maxLines: 12,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                Expanded(
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('cardCompOne.jpg')),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                          )),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                Expanded(
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('cardCompTwo.jpg')),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(100),
                            bottomRight: Radius.circular(100),
                          )),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'New Zealand Kitchen',
                        style: TextStyle(
                          color: Colors.blue.shade900,
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
                          color: Colors.grey.shade800,
                          fontSize: 12,
                          fontFamily: 'Quicksand',
                        ),
                        maxLines: 12,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AutoSizeText(
                        'Best Farms on Earth with Best Agricultural Ecosystem',
                        style: TextStyle(
                          color: Colors.blue.shade900,
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
                          color: Colors.grey.shade800,
                          fontSize: 12,
                          fontFamily: 'Quicksand',
                        ),
                        maxLines: 12,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.15),
                Expanded(
                  child: Center(
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.5,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage('cardCompOne.jpg')),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(100),
                            bottomLeft: Radius.circular(100),
                          )),
                    ),
                  ),
                ),
                SizedBox(width: MediaQuery.of(context).size.width * 0.1),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Row(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width * 0.5,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.1,
                        horizontal: MediaQuery.of(context).size.width * 0.05),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        AutoSizeText(
                          'Arab Global Council for Internationl Relations',
                          style: TextStyle(
                            color: Colors.blue.shade900,
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
                            color: Colors.grey.shade800,
                            fontSize: 12,
                            fontFamily: 'Quicksand',
                          ),
                          maxLines: 12,
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(
                  flex: 2,
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('cto.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(100),
                          bottomRight: Radius.circular(100),
                        ),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.35),
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
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.transparent, Colors.black],
                                  stops: [0.4, 1])),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: MediaQuery.of(context).size.width * 0.2,
                  child: Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100),
                        ),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.15,
                          height: MediaQuery.of(context).size.height * 0.6,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage('ceo.jpg'),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(100),
                          bottomLeft: Radius.circular(100),
                        ),
                        child: Container(
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.35),
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
                          height: MediaQuery.of(context).size.height * 0.6,
                          width: MediaQuery.of(context).size.width * 0.15,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                  begin: Alignment.topCenter,
                                  end: Alignment.bottomCenter,
                                  colors: [Colors.transparent, Colors.black],
                                  stops: [0.4, 1])),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
