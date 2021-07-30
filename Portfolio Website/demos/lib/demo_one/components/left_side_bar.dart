import 'package:flutter/material.dart';

class LeftSideBar extends StatelessWidget {
  const LeftSideBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: RotatedBox(
        quarterTurns: 3,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "It's choice, bro. Rattle ya dags!",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w900,
                  fontFamily: 'Quicksand',
                  letterSpacing: 8),
            ),
          ],
        ),
      ),
      width: MediaQuery.of(context).size.width * 0.1,
      height: MediaQuery.of(context).size.height * 0.85,
    );
  }
}
