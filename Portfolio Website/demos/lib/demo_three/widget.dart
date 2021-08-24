import 'package:flutter/material.dart';

import 'components/home-page/home-page.dart';

class DemoThree extends StatefulWidget {
  const DemoThree({Key? key}) : super(key: key);

  @override
  _DemoThreeState createState() => _DemoThreeState();
}
 
class _DemoThreeState extends State<DemoThree> {
  @override
  Widget build(BuildContext context) {
    return HomePage();
  }
}
