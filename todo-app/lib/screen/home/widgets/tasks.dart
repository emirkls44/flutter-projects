import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../models/task.dart';

class Tasks extends StatelessWidget {
  final taskList = Task.generateTask();

  @override
  Widget build(BuildContext context) {
    return Container(padding:EdgeInsets.all(10),
      child: GridView.builder(
        itemCount: taskList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (context, index) => taskList.isEmpty
            ? Container()
            : taskList[index].isLast == true
            ? _buildAddTask()
            : _buildTask(context, taskList[index]),
      ),
    );
  }

  Widget _buildAddTask() {
    return DottedBorder(
      child: Center(
      child: Text('+ Add',
      style: TextStyle(
          fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
      ),
    ),
    );
  }

  Widget _buildTask(BuildContext context, Task task) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 15),
      decoration: BoxDecoration(
        color: task.bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(task.iconData, color: task.iconColor, size: 45,),
          SizedBox(height: 15),
          Text(
            task.title!,
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              _buildTakStatus(task.btnColor!,task.iconColor! , '${task.left} left',),
              SizedBox(height:60,width: 10,),
              _buildTakStatus(Colors.white,task.iconColor!,'${task.done} done',),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildTakStatus(Color bgColor,Color txColor,String text) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical:6),
        decoration: BoxDecoration(
          boxShadow:[ BoxShadow(
              color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 4,
            offset: Offset(2, 3),
          ),
          ],
          color: bgColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
            text,style: TextStyle(
          color: txColor,
        ),
        ),
      ),
    );
  }



















}
