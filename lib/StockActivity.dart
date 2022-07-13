import 'package:flutter/material.dart';

class StocksActivity extends StatefulWidget {
  const StocksActivity({Key? key}) : super(key: key);

  @override
  State<StocksActivity> createState() => _StocksActivityState();
}

class _StocksActivityState extends State<StocksActivity> {
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
