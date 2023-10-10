import 'package:flutter/material.dart';
import 'package:todo2/setting/Settings.dart';
import 'package:todo2/task_list/Task_LIst.dart';
import 'package:todo2/task_list/add_task_bottom_sheet.dart';

import '../MyTheme.dart';

class HomeScreen extends StatefulWidget {
  static const String routesName = 'Home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
          title:
              Text('ToDo List', style: Theme.of(context).textTheme.titleLarge)),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
              BottomNavigationBarItem(icon: Icon(Icons.settings), label: '')
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {showAddBottomSheet();},
        child: Icon(Icons.add, size: 30),
        shape: StadiumBorder(
            side: BorderSide(color: MyTheme.whiteColor, width: 4)),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: taps[selectedIndex],
    );
  }
  List<Widget>taps=[TaskListTap(),SettingTap()];

  void showAddBottomSheet() {showModalBottomSheet(context: context, builder:(context)=>AddTaskBottomSheet());}
}
