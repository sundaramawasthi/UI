import 'package:flutter/material.dart';

class middle extends StatefulWidget {
  const middle({Key? key}) : super(key: key);

  @override
  State<middle> createState() => _middleState();
}

class _middleState extends State<middle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Text(
            "Watchlist",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            "See all",
            style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent),
          )
        ],
      ),
    );
  }
}
