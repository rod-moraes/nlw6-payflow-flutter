import 'package:flutter/material.dart';
import 'package:payflow/modules/home/home_controller.dart';

import 'package:payflow/modules/home/widgets/app_bar/app_bar_widget.dart';
import 'package:payflow/modules/home/widgets/bottom_navigation_bar/bottom_navigation_bar_widget.dart';
import 'package:payflow/shared/model/user_model.dart';

class HomePage extends StatefulWidget {
  final UserModel user;
  HomePage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();
  final pages = [
    Container(
      color: Colors.white,
    ),
    Container(
      color: Colors.blue,
    ),
    Container(
      color: Colors.black,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(user: widget.user, onTap: () {}),
      body: pages[controller.currentPage],
      bottomNavigationBar: BottomNavigationBarWidget(
        onTap: (index) {
          controller.setPage(index);
          setState(() {});
          print(controller.currentPage);
        },
      ),
    );
  }
}
