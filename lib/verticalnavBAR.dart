import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class verticalNav extends StatefulWidget {
  @override
  _verticalNavState createState() => _verticalNavState();
}

class _verticalNavState extends State<verticalNav> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        getIcon(Icons.apple, 1, 20, 3),
        getIcon(Icons.paypal, 1, 20, 3),
        getIcon(FontAwesomeIcons.atlassian, 1, 15, 5),
        getIcon(Icons.arrow_drop_down, .5, 20, 3),
      ],
    );
  }
}

getIcon(IconData data, double op, double sz, double pd) {
  return Container(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.black.withOpacity(.05),
    ),
    child: Padding(
      padding: EdgeInsets.all(pd),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: FaIcon(
          data,
          size: sz,
          color: Colors.black.withOpacity(op),
        ),
      ),
    ),
  );
}
