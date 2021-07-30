import 'package:flutter/material.dart';

class DemoTwoAppBar extends StatelessWidget {
  final accentColor = Color(0xFFeab71e);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(width: MediaQuery.of(context).size.width * 0.025),
          Text(
            'About',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 12),
          Container(
            width: 8,
            height: 8,
            decoration:
                BoxDecoration(color: accentColor, shape: BoxShape.circle),
          ),
          SizedBox(width: 12),
          Text(
            'Activity',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 12),
          Container(
            width: 8,
            height: 8,
            decoration:
                BoxDecoration(color: accentColor, shape: BoxShape.circle),
          ),
          SizedBox(width: 12),
          Text(
            'Investments',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 12),
          Container(
            width: 8,
            height: 8,
            decoration:
                BoxDecoration(color: accentColor, shape: BoxShape.circle),
          ),
          SizedBox(width: 12),
          Text(
            'Partners',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 12),
          Container(
            width: 8,
            height: 8,
            decoration:
                BoxDecoration(color: accentColor, shape: BoxShape.circle),
          ),
          SizedBox(width: 12),
          Text(
            'Services',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700),
          ),
          SizedBox(width: 12),
          Container(
            width: 8,
            height: 8,
            decoration:
                BoxDecoration(color: accentColor, shape: BoxShape.circle),
          ),
          SizedBox(width: 12),
          Text(
            'Contact',
            style: TextStyle(
                color: Colors.black87,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700),
          ),
          Spacer(),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('sm-icons/facebook_gold.png'),
                    fit: BoxFit.contain)),
          ),
          SizedBox(width: 24),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('sm-icons/instagram_gold.png'),
                    fit: BoxFit.contain)),
          ),
          SizedBox(width: 24),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('sm-icons/linkedin_gold.png'),
                    fit: BoxFit.contain)),
          ),
          SizedBox(width: 24),
          Container(
            height: 20,
            width: 20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('sm-icons/twitter_gold.png'),
                    fit: BoxFit.contain)),
          ),
          SizedBox(width: MediaQuery.of(context).size.width * 0.025),
        ],
      ),
    );
  }
}
