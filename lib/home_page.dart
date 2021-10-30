//https://medium.com/@shualoko/flutter-custom-bottomappbar-9d87ac3903c3

import 'package:custom_app_baar/custom_app_bar_item.dart';
import 'package:custom_app_baar/floating_button_animated.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String _lastSelected = "TAB: 0";

  void _selectedTab(int index) {
    setState(() {
      _lastSelected = "TAB $index";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Custom App Bar"),
        centerTitle: true,
      ),
      body: Center(
        child: Text(_lastSelected, style: TextStyle(fontSize: 32.0),),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingButtonAnimated(),
      // FloatingActionButton(
      //   onPressed: (){},
      //   child: Icon(Icons.add),
      //   elevation: 2.0,
      // ),
      bottomNavigationBar: CustomBottonAppBar(
        onTabSelected: _selectedTab,
        items: [
          CustomAppBarItem(icon: Icons.home),
          CustomAppBarItem(icon: Icons.shopping_cart, hasNotification: true),
          CustomAppBarItem(icon: Icons.list),
          CustomAppBarItem(icon: Icons.person),
        ],
      ),
    );
  }
}
