import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/MyTheme.dart';
import 'package:to_do_app/home/TaskList/Task_List_Item.dart';

class TaskListTab extends StatelessWidget {
  static const String routeName = 'taskListTab';
  const TaskListTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
       children: [
         EasyDateTimeLine(
           initialDate: DateTime.now(),
           onDateChange: (selectedDate) {
            //`selectedDate` the new date selected.
           },
           headerProps: const EasyHeaderProps(
             monthPickerType: MonthPickerType.switcher,
             dateFormatter: DateFormatter.fullDateDMY(),
           ),
           dayProps: const EasyDayProps(
             dayStructure: DayStructure.dayStrDayNum,
             activeDayStyle: DayStyle(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(8)),
                 gradient: LinearGradient(
                   begin: Alignment.topCenter,
                   end: Alignment.bottomCenter,
                   colors: [
                     Color(0xff3371FF),
                     Color(0xff8426D6),
                   ],
                 ),
               ),
             ),
           ),
         ),
         Expanded(
           child: ListView.builder(
             itemCount: 2,
             itemBuilder: (context, index) {
               return  TaskListItem();
               },
           ),
         )
       ],
     ),
    );
  }
}

