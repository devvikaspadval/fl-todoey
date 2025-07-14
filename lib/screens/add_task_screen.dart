
import 'package:flutter/material.dart';

class AddTaskScreen extends StatelessWidget {
  const AddTaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff757575),
      child: Container(
        padding: const EdgeInsets.all(20.0),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text("Add Task", style: TextStyle(fontSize: 30.0, color: Theme.of(context).colorScheme.primary),textAlign: TextAlign.center,),
            const TextField(autofocus:true, textAlign: TextAlign.center,),
            const SizedBox(height: 10.0,),
            TextButton(onPressed: (){},style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all(Colors.lightBlueAccent),

            ), child: const Text("Add",style: TextStyle(color: Colors.white),))
          ],
        ),
      ),
    );
  }
}
