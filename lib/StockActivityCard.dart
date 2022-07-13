import 'package:flutter/material.dart';

class StocksActivityCard extends StatelessWidget {
  String companyTitle;
  String companyName, val3;
  Image companyLogo = Image.asset('Assets/icons8-nvidia-64.png');
  double growth, val1, val2;
  StocksActivityCard(
      {required this.companyLogo,
      required this.companyName,
      required this.companyTitle,
      required this.growth,
      required this.val1,
      required this.val2,
      required this.val3});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      fit: BoxFit.contain,
      child: Container(
        height: MediaQuery.of(context).size.height / 8,
        width: MediaQuery.of(context).size.width * 2 / 2.4,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Container(
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black.withOpacity(.05),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(5),
                    child: FittedBox(fit: BoxFit.contain, child: companyLogo),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      companyTitle,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    Opacity(
                      opacity: .5,
                      child: Text(
                        companyName,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(val1.toString(),
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
                Row(
                  children: [
                    growth >= 0
                        ? const Icon(
                            Icons.arrow_upward_rounded,
                            color: Colors.greenAccent,
                          )
                        : const Icon(Icons.arrow_downward_rounded,
                            color: Colors.greenAccent),
                    Text(
                      growth.toString() + '%',
                      style: TextStyle(color: Colors.greenAccent),
                    ),
                  ],
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '\$' + val2.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 5,
                ),
                Opacity(opacity: .5, child: Text(val3.toString())),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
