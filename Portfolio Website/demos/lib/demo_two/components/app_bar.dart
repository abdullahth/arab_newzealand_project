import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Center(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.08,
                width: MediaQuery.of(context).size.height * 0.08,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('athena-symbol-white.png'),
                        fit: BoxFit.contain)),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'About',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 24),
                Text(
                  'Activity',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 24),
                Text(
                  'Investments',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 24),
                Text(
                  'Partners',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 24),
                Text(
                  'Services',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(width: 24),
                Text(
                  'Contact',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.04,
                  width: 60,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('login-button.png'),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(5)),
                ),
                SizedBox(width: 12),
                Text(
                  'Sign Up',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Quicksand',
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
