import 'package:flutter/material.dart';

class buttomnnavbar extends StatefulWidget {
  const buttomnnavbar({Key? key}) : super(key: key);

  @override
  State<buttomnnavbar> createState() => _buttomnnavbarState();
}

class _buttomnnavbarState extends State<buttomnnavbar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.pie_chart),
          label: '',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.school),
        //   label: '',
        // ),
        BottomNavigationBarItem(
          icon: Icon(Icons.man),
          label: '',
        ),
      ],
    );
  }
}
