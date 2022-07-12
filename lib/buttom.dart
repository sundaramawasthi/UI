import 'package:flutter/material.dart';

class buttom extends StatefulWidget {
  const buttom({Key? key}) : super(key: key);

  @override
  State<buttom> createState() => _buttomState();
}

class _buttomState extends State<buttom> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Stocks Activity",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
