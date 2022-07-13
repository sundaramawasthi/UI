import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:ui/Cardview.dart';
import 'package:ui/WatchlistCard.dart';

import 'StockActivity.dart';
import 'StockActivityCard.dart';
import 'watchlist.dart';

class Frontpage extends StatefulWidget {
  const Frontpage({Key? key}) : super(key: key);

  @override
  State<Frontpage> createState() => _FrontpageState();
}

class _FrontpageState extends State<Frontpage> {
  String tempdata = '\$15,136.32';
  Color primaryColor = Color(0xff03314b);
  Color secondryColor = Color(0xff23ca96);
  int indx = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(.98),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indx,
        onTap: (index) {
          setState(() {
            indx = index;
          });
        },
        selectedIconTheme: IconThemeData(color: Color(0xff23ca96)),
        unselectedIconTheme:
            IconThemeData(color: Colors.black87.withOpacity(.5)),
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.house,
              size: 20,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.pie_chart),
            label: '',
          ),
          BottomNavigationBarItem(
            // icon: Icon(
            //   FontAwesomeIcons.arrowRightArrowLeft,
            //   color: Colors.white,
            // ),
            icon: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: secondryColor),
                child: Padding(
                    padding: EdgeInsets.all(8),
                    child: Icon(
                      FontAwesomeIcons.arrowRightArrowLeft,
                      size: 15,
                      color: Colors.black87,
                    ))),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Container(
              child: Icon(
                Icons.candlestick_chart_outlined,
                size: 25,
              ),
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: FaIcon(
              FontAwesomeIcons.user,
              size: 15,
            ),
            label: '',
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 30, right: 30),
          child: Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Image.asset('Assets/logo.jpg'),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Alex Julia ",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      width: 110,
                    ),
                    const Icon(Icons.search),
                    const SizedBox(
                      width: 10,
                    ),
                    Badge(
                      // badgeContent: Text(''),
                      badgeColor: Colors.red,
                      position: BadgePosition.topEnd(top: 14, end: 9),

                      child: IconButton(
                        // Use the FaIcon Widget + FontAwesomeIcons class for the IconData
                        icon: FaIcon(FontAwesomeIcons.bell),
                        onPressed: () {},
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                CardView(),
                const SizedBox(
                  height: 15,
                ),
                const Watchlist(),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 4,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        Wishlist(
                          companyName: 'Adobe Inc.',
                          companyTitle: 'ADB',
                          companyLogo: Icons.adobe,
                          growth: 5.49,
                          val1: 33.49,
                          val2: 643.58,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Wishlist(
                          companyName: 'Tesla',
                          companyTitle: 'TSLA',
                          companyLogo: Icons.add,
                          growth: 5.49,
                          val1: 25.68,
                          val2: 909.68,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Wishlist(
                          companyName: 'Adobe Inc.',
                          companyTitle: 'ADB',
                          companyLogo: Icons.adb,
                          growth: 5.49,
                          val1: 33.49,
                          val2: 643.58,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                StocksActivity(),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 6,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        StocksActivityCard(
                          companyName: ' Nvidia.',
                          companyTitle: 'NVDA',
                          companyLogo:
                              Image.asset('Assets/icons8-nvidia-64.png'),
                          growth: 0.14,
                          val1: 25.94,
                          val2: 643.58,
                          val3: '10 share',
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        StocksActivityCard(
                          companyName: ' Nvidia.',
                          companyTitle: 'NVDA',
                          companyLogo:
                              Image.asset('Assets/icons8-nvidia-64.png'),
                          growth: 0.14,
                          val1: 25.94,
                          val2: 643.58,
                          val3: '10 share',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
