import 'package:flutter/material.dart';
import 'package:ui/CardverticalNav.dart';

class CardView extends StatefulWidget {
  const CardView({Key? key}) : super(key: key);

  @override
  State<CardView> createState() => _CardViewState();
}

class _CardViewState extends State<CardView> {
  String tempdata = '\$15,136.32';
  Color primaryColor = Color(0xff03314b);
  Color secondryColor = Color(0xff23ca96);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height / 3.9,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 5,
            right: 15,
            child: RotationTransition(
              turns: new AlwaysStoppedAnimation(3 / 360),
              child: Container(
                height: 60,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: secondryColor,
                ),
              ),
            ),
          ),
          Container(
            height: 185,
            width: 290,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: primaryColor,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 18),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Portfolio View",
                  style: TextStyle(
                    color: Colors.white.withOpacity(.5),
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: 'Shizuru',
                        ),
                        children: [
                          TextSpan(
                            text: tempdata,
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(0.0, -24.0),
                              child: const Text(
                                '  2,11%',
                                style: TextStyle(
                                  fontSize: 11,
                                  fontFamily: 'RobotoMono',
                                  color: Colors.greenAccent,
                                ),
                              ),
                            ),
                          ),
                          WidgetSpan(
                            child: Transform.translate(
                              offset: const Offset(0.0, -24.0),
                              child: const Icon(
                                Icons.arrow_upward,
                                color: Colors.greenAccent,
                                size: 13,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                          secondryColor,
                        ),
                      ),
                      child: const Text(
                        "Deposite",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    OutlinedButton(
                      onPressed: () {},
                      style: OutlinedButton.styleFrom(
                        side: BorderSide(width: .5, color: secondryColor),
                        backgroundColor: primaryColor,
                      ),
                      child: const Text(
                        "Widraw",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
              right: 30,
              bottom: 0,
              child: Container(
                width: 50,
                height: 170,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(15),
                ),
                child: verticalNav(),
              )),
        ],
      ),
    );
  }
}
