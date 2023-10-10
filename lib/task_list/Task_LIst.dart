import 'package:flutter/material.dart';
import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:todo2/task_list/Task_widget.dart';

import '../MyTheme.dart';

class TaskListTap extends StatelessWidget {
  const TaskListTap({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      CalendarTimeline(
        initialDate: DateTime.now(),
        firstDate: DateTime.now().subtract(Duration(days: 365)),
        lastDate: DateTime.now().add(Duration(days: 365)),
        onDateSelected: (date) => print(date),
        leftMargin: 20,
        monthColor: MyTheme.blackColor,
        dayColor: MyTheme.blackColor,
        activeDayColor: MyTheme.whiteColor,
        activeBackgroundDayColor: Theme.of(context).primaryColor,
        dotsColor: MyTheme.whiteColor,
        selectableDayPredicate: (date) => true,
        locale: 'en_ISO',
      ),
      Expanded(
        child: ListView.builder(itemBuilder: (context,index){
          return TaskWidget();
        },itemCount: 20,),
      )
    ]);
  }
}
