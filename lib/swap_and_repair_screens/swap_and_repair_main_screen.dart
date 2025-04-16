import 'package:flutter/material.dart';
import 'package:furniswap/icons/icons.dart';
import 'package:furniswap/swap_and_repair_screens/diy_screen.dart';
import 'package:furniswap/swap_and_repair_screens/repair_screen.dart';
import 'package:furniswap/swap_and_repair_screens/swap_screen.dart';

class SwapAndRepairMainScreen extends StatelessWidget {
  const SwapAndRepairMainScreen({super.key});

  Widget buildTabItem({required IconData icon, required String lable}) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          icon,
          color: Colors.black,
          size: 21,
        ),
        SizedBox(width: 8),
        Text(lable),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Color(0xffF5EFE6),
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            "Swap & Repair",
            style: TextStyle(
                color: Color(0xff694A38),
                fontSize: 20,
                fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications_none,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
          ],
          bottom: TabBar(
              overlayColor:
                  MaterialStateProperty.all(Colors.brown.withOpacity(0.07)),
              labelStyle: TextStyle(
                  fontWeight: FontWeight.bold, fontFamily: "pop", fontSize: 15),
              unselectedLabelStyle: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontFamily: "pop",
                  fontSize: 15),
              indicatorColor: Color(0xff694A38),
              labelColor: Color(0xff694A38),
              unselectedLabelColor: Colors.grey,
              tabs: [
                Tab(
                  child: buildTabItem(icon: MyFlutterApp.swap, lable: "Swap"),
                ),
                Tab(
                  child:
                      buildTabItem(icon: MyFlutterApp.repair, lable: "Repair"),
                ),
                Tab(
                  child: buildTabItem(icon: MyFlutterApp.book, lable: "DIY"),
                ),
              ]),
        ),
        body: TabBarView(
          children: [SwapScreen(), RepairScreen(), DiyScreen()],
        ),
      ),
    );
  }
}
