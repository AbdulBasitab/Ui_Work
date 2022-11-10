import 'package:flutter/material.dart';
import 'package:ui/Models/model.dart';

class NewTask extends StatefulWidget {
  NewTask({
    Key? key,
    required this.onAddTask,
    required this.taskController,
    required this.validateTask,
  }) : super(key: key);

  final validateTask;
  final VoidCallback onAddTask;
  final TextEditingController taskController;

  @override
  State<NewTask> createState() => _NewTaskState();
}

class _NewTaskState extends State<NewTask> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController taskController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 270,
            height: 55,
            child: Container(
              margin: const EdgeInsets.only(
                bottom: 8,
                left: 15,
                right: 5,
                top: 5,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.shade300,
                    blurRadius: 5.0,
                  ),
                ],
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextFormField(
                controller: widget.taskController,
                validator: validateTask,
                showCursor: true,
                cursorColor: Colors.black38,
                cursorWidth: 1,
                decoration: InputDecoration.collapsed(
                  hintText: 'Add a new task...',
                  hintStyle: TextStyle(
                    color: Colors.grey.shade500,
                    fontSize: 15,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              bottom: 5,
            ),
            padding: const EdgeInsets.only(
              bottom: 12,
              left: 5,
              right: 2,
              top: 1,
            ),
            child: IconButton(
                // iconSize: 30,
                splashColor: Colors.grey.shade50,
                icon: const Icon(
                  Icons.add_circle_rounded,
                  color: Colors.blueAccent,
                  size: 45,
                ),
                onPressed: widget.onAddTask),
          )
        ],
      ),
    );
  }
}

String? validateTask(String? value) {
  if (value!.isEmpty)
    return 'Text Field Cannot be empty';
  else
    return null;
}
