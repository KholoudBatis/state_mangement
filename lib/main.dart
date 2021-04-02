
import 'package:flutter/material.dart';
import 'package:state_mangement/TaskCard.dart';
import 'package:state_mangement/task.dart';

void main() => runApp(MyHomePage());




class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
List<Task> tasks  =[
  Task(name: "Are you a student"),
  Task(name: "the doctor is here "),
  Task(name: "can you help me "),
];
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
       home: Scaffold(
          appBar: AppBar(

            title: Text('Task - Lifit State'),
            centerTitle:true,
            backgroundColor: Colors.green,

          ),

          body: ListView.builder(itemCount:tasks.length,
          itemBuilder: (context,index){
            return TaskCard(task :tasks[index],
                removeTask :(){
             setState(() {
               tasks.remove(tasks[index]);
             });
            },
            );
           },
          ),
        ),
    );

  }
}

