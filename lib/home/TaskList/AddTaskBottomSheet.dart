import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do_app/MyTheme.dart';

class AddTaskBottomSheet extends StatefulWidget {

   AddTaskBottomSheet({super.key});


  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  DateTime selectedDate = DateTime.now();
  var formKey = GlobalKey<FormState>();
  String title = '';
  String description = '';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height*0.6,
      padding: EdgeInsets.all(15),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(child: Text("ADD new Task",style: Theme.of(context).textTheme.titleMedium,)),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                title = value;
              },
              validator: (value) {
                if(value==null||value.trim().isEmpty){
                  return 'enter valid title';
                }return null;
              },
              decoration: InputDecoration(
                hintText: 'enter yout task',
                hintStyle: TextStyle().copyWith(
                    color: MyTheme.grey,fontSize: 20,fontWeight: FontWeight.w400
                )
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              onChanged: (value) {
                description = value;
              },
              validator: (value) {
                if(value==null||value.trim().isEmpty){
                  return 'enter valid description';
                }return null;
                },
              minLines: 1,
              maxLines: 3,
              decoration: InputDecoration(
                  hintText: 'enter task description ',

                  hintStyle: TextStyle().copyWith(
                      color: MyTheme.grey,fontSize: 20,fontWeight: FontWeight.w400
                  )
              ),
            ),
            SizedBox(height: 40),
            Text("Select Date",style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontSize: 20,
              fontWeight: FontWeight.w400
            )),
            SizedBox(height: 20),
            Center(
                child: InkWell(
                  onTap: () {
                    showTaskDatePicker();
                  },
                    child: Text("${selectedDate.day} / ${selectedDate.month} / ${selectedDate.year} "
                      ,style: Theme.of(context).textTheme.titleMedium?.copyWith(
                      fontWeight: FontWeight.w400
                    ),)
                )
            ),
            SizedBox(height: 35),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(12)
                ),
                onPressed: () {
                  addTask();
                },
                child: Text("ADD",style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  color: MyTheme.whiteColor
                ),))
          ],
        ),
      ),
    );
  }

  void showTaskDatePicker() async{
    DateTime ? chosenDate = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime.now(),
        lastDate: DateTime.now().add(Duration(days: 365))
    );
    if(chosenDate!=null){
      selectedDate = chosenDate;
    }
    setState(() {

    });
  }

  void addTask() {
    if(formKey.currentState!.validate()==true){
      // add task
    }
  }
}
