import 'package:flutter/material.dart';

import '../../MyTheme.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10,horizontal:10 ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height*0.15,
      decoration: BoxDecoration(
          color: MyTheme.whiteColor,
          borderRadius: BorderRadius.circular(20)
      ),
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            height: MediaQuery.of(context).size.height*0.12,
            width: 5,
            decoration: BoxDecoration(
                color: MyTheme.primaryColor,
                borderRadius: BorderRadius.circular(5)
            ),
          ),
          SizedBox(width: 10),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Play basket ball",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: MyTheme.primaryColor
              ),),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.disc_full_outlined),
                  SizedBox(width: 10),
                  Text("10:30 AM")
                ],
              )
            ],
          ),
          Spacer(),
          InkWell(
            onTap: () {
            },
            child: Container(
              margin: EdgeInsets.only(right: 15),
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              child: Icon(Icons.check,color: MyTheme.whiteColor,size: 25,),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: MyTheme.primaryColor
              ),
            ),
          )
        ],
      ),
    );
  }
}
