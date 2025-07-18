import 'package:flutter/material.dart';
import '../screens/add_task_screen.dart';
import '../widgets/task_list.dart';

class TasksScreen extends StatelessWidget {
  const TasksScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      body: Column(
        crossAxisAlignment:  CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.only(top: 60.0, left: 30.0, right: 30.0, bottom: 30.0),
            child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(backgroundColor: Colors.white, radius: 30.0,child: Icon(Icons.list,size: 30.0, color: Theme.of(context).colorScheme.primary,),),
                const SizedBox(height: 10.0,),
                const Text("Todoey",style: TextStyle(color: Colors.white,fontSize: 50.0, fontWeight: FontWeight.w700),),
                const Text("15 Tasks",style: TextStyle(color: Colors.white, fontSize: 18.0),)
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0), topRight: Radius.circular(20.0))
              ),
              child: const TaskList(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: (){
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => SingleChildScrollView(
                    child: Container(
                    padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: const AddTaskScreen())));
          },
          backgroundColor: Theme.of(context).colorScheme.primary,
          tooltip: "Add Task",
          shape:const CircleBorder(),
          child: const Icon(Icons.add,color: Colors.white,)),
    );
  }
}



