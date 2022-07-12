import 'package:flutter/material.dart';

class Wishlist extends StatelessWidget {
  String companyTitle;
  String companyName;
  IconData? companyLogo = Icons.adobe;
  double growth, val1, val2;
  Wishlist(
      {this.companyLogo,
      required this.companyName,
      required this.companyTitle,
      required this.growth,
      required this.val1,
      required this.val2});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width * 2 / 3,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(companyLogo),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          companyTitle,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 13),
                        ),
                        Opacity(
                          opacity: .5,
                          child: Text(
                            companyName,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    growth >= 0
                        ? Icon(
                            Icons.arrow_upward_rounded,
                            color: Colors.greenAccent,
                          )
                        : Icon(Icons.arrow_downward_rounded,
                            color: Colors.greenAccent),
                    Text(
                      growth.toString() + '%',
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                  ],
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(val1.toString(),
                        style: TextStyle(
                            fontSize: 25, fontWeight: FontWeight.bold)),
                    Opacity(opacity: .5, child: Text('\$' + val2.toString())),
                  ],
                ),
                Image.asset(
                  'Assets/graph.jpg',
                  width: 100,
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
