import 'package:demo/Page/Homepage.dart';
import 'package:demo/Page/Settings.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer_menu.dart';

class HiddenDrawer extends StatefulWidget {
  const HiddenDrawer({super.key});

  @override
  State<HiddenDrawer> createState() => _HiddenDrawerState();
}

class _HiddenDrawerState extends State<HiddenDrawer> {
  List<ScreenHiddenDrawer> _pages = [];
  final myTextStyle= TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 18,
    color: Colors.white,
  );

  @override
  void initState() {
    super.initState();
    _pages = [
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Homepage",
            baseStyle:myTextStyle,
            selectedStyle: TextStyle()),
        Homepage(),
      ),
      ScreenHiddenDrawer(
        ItemHiddenMenu(
            name: "Settings",
            baseStyle: myTextStyle,
            selectedStyle: TextStyle()),
        Settings(),
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
        screens: _pages,
        initPositionSelected: 0,
        slidePercent: 40,
        backgroundColorMenu: Colors.deepPurple.shade200);
  }
}
