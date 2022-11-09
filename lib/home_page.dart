import 'package:flutter/material.dart';
import '../main.dart';
import 'Models/model.dart';
import 'Widgets/Task_ui.dart';
import 'Widgets/Subtext.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool check = false;
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(248, 250, 250, 250),
      body: Container(
        padding: const EdgeInsets.only(
          left: 30,
          top: 70,
          right: 30,
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Welcome back, Stan',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 30,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            const Text(
              'You have got 7 tasks coming up in the next days. ',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w600,
                fontSize: 15,
              ),
            ),
            const SizedBox(height: 45),
            const NewTask(),
            Expanded(
              child: ListView(
                  padding: EdgeInsets.zero,
                  children: Task.taskList
                      .map(
                        (task) => Card(
                          elevation: 10,
                          shadowColor: Colors.grey.shade300,
                          child: ListTile(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                            title: Text(
                              task.title,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            isThreeLine: true,
                            subtitle: subText(task),
                            contentPadding: const EdgeInsets.only(
                              right: 3,
                              bottom: 3,
                              left: 1,
                              top: 5,
                            ),
                            leading: SizedBox(
                              height: 20,
                              child: Checkbox(
                                  activeColor: Colors.white,
                                  checkColor: Colors.blue,
                                  value: check1,
                                  onChanged: (bool? val) {
                                    setState(() {
                                      check1 = val!;
                                    });
                                  }),
                            ),
                            tileColor: Colors.white,
                          ),
                        ),
                      )
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
