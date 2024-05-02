import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/home/Settings/Settings.dart';
import 'package:to_do_app/home/TaskList/AddTaskBottomSheet.dart';
import 'package:to_do_app/home/TaskList/Task_List_Tab.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

   HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex=0;
  var tabs = [TaskListTab(),Settings()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(title: Text("To Do List"),toolbarHeight: MediaQuery.of(context).size.height*0.18,),
      bottomNavigationBar: BottomAppBar(
        elevation: 0,
        shape: CircularNotchedRectangle(),
        notchMargin: 5,

        child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (index) {
              selectedIndex = index;
              setState(() {
              });
            },
            items: [
          BottomNavigationBarItem(icon:Icon(Icons.list) ,label: 'Task List'),
          BottomNavigationBarItem(icon:Icon(Icons.settings) ,label: 'Settings'),
        ]),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ShowModalBottomSheet();
        },
        child: Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: tabs[selectedIndex],
    );

  }

  Future ShowModalBottomSheet() async{
    return await showModalBottomSheet(
      isScrollControlled: true,
        context: context,
        builder: (context) {
          return  Padding(
            padding:  EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
            child: AddTaskBottomSheet(),
          );
        },
    );
  }
}
