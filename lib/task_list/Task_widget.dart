import 'package:flutter/material.dart';

import '../MyTheme.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Slidable(


        // The start action pane is the one at the left or the top side.
        startActionPane: ActionPane(
          extentRatio: 0.25,
        // A motion is a widget used to control how the pane animates.
        motion: const ScrollMotion()
    ,
    


    // All actions are defined in the children parameter.
    children:  [
    // A SlidableAction can have an icon and/or a label.
    SlidableAction(
      borderRadius: BorderRadius.circular(15),
    onPressed: (context){},
    backgroundColor: Color(0xFFFE4A49),
    foregroundColor: Colors.white,
    icon: Icons.delete,
    label: 'Delete',
    ),

    ],),
    child: Container(
    margin: EdgeInsets.all(12),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(15), color: MyTheme.whiteColor),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
    Container(
    color: Theme.of(context).primaryColor,
    height: 80,
    width: 4,
    ),
    Expanded(
    child: Column(crossAxisAlignment: CrossAxisAlignment.stretch ,
    children: [
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text(
    'Task Title',
    style: Theme.of(context)
        .textTheme
        .titleSmall
        ?.copyWith(color: Theme.of(context).primaryColor),
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(8.0),
    child: Text('Des',style: Theme.of(context).textTheme.titleSmall,),
    )
    ],
    )),
    Container(
    padding: EdgeInsets.symmetric(vertical: 7, horizontal: 20),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    color: Theme.of(context).primaryColor),
    child: Icon(
    Icons.check,
    color: MyTheme.whiteColor,
    size: 28,
    ),
    ),
    ]),
    ));

  }
}
