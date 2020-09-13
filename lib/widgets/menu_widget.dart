import 'package:facebook/screens/groups_screen.dart';
import 'package:facebook/screens/home_screen.dart';
import 'package:facebook/screens/menu_screen.dart';
import 'package:facebook/screens/movies_screen.dart';
import 'package:facebook/screens/notifications_screen.dart';
import 'package:facebook/screens/store_screen.dart';
import 'package:flutter/material.dart';

class MenuWidget extends StatefulWidget {
  @override
  _MenuWidgetState createState() => _MenuWidgetState(); 
}

class _MenuWidgetState extends State<MenuWidget> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();
    controller = TabController(length: 6, vsync: this);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  final Color color = Color.fromRGBO(218, 221, 225, 1);
  final double size = 30.0;
  final Color primary = Color.fromRGBO(45, 136, 255, 1);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60.0,
        backgroundColor: Colors.white,
        bottom: TabBar(
          controller: controller,
          indicatorColor: primary,
          labelColor: primary,
          unselectedLabelColor: color,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.home, size: size,) ),
            Tab(icon: Icon(Icons.group, size: size,)),
            Tab(icon: Icon(Icons.tv, size: size,)),
            Tab(icon: Icon(Icons.store, size: size,)),
            Tab(icon: Icon(Icons.notifications, size: size,)),
            Tab(icon: Icon(Icons.menu, size: size,)),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: <Widget>[
          HomeScreen(),
          GroupsScreen(),
          MovieScreen(),
          StoreScreen(),
          NotificationsScreen(),
          MenuScreen(),
        ],
      ),
    );
  }
}
