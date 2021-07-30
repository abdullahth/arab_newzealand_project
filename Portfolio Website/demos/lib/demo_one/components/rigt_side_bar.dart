import 'package:flutter/material.dart';

class RightSideBar extends StatelessWidget {
  const RightSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.85,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(flex: 2),
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
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}
