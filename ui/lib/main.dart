import 'package:flutter/material.dart';
import '../model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool check = false;
  bool check1 = false;
  bool check2 = false;
  bool check3 = false;
  bool check4 = false;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(248, 250, 250, 250),
        body: Container(
          padding: EdgeInsets.only(
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
              SizedBox(
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
              SizedBox(height: 45),
              Padding(
                padding: const EdgeInsets.only(
                  left: 6,
                ),
                child: Row(
                  children: [
                    Checkbox(
                        activeColor: Colors.white,
                        checkColor: Colors.blue,
                        value: check,
                        onChanged: (bool? val) {
                          setState(() {
                            check = val!;
                          });
                        }),
                    SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Add a new task..',
                      style: TextStyle(
                        color: Colors.grey.shade500,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Expanded(
                child: ListView(
                    itemExtent: 145,
                    shrinkWrap: true,
                    children: Task.taskList
                        .map(
                          (task) => Card(
                            elevation: 10,
                            shadowColor: Colors.grey.shade300,
                            child: ListTile(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(50.0)),
                              title: Text(
                                task.title,
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 16,
                                ),
                              ),
                              isThreeLine: true,
                              subtitle: Padding(
                                padding: const EdgeInsets.only(
                                  top: 10,
                                ),
                                child: Column(
                                  children: [
                                    Text(task.subText),
                                    if (task.subText.isNotEmpty)
                                      SizedBox(
                                        height: 12,
                                      ),
                                    Padding(
                                      padding: EdgeInsets.only(
                                        right: 10,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(
                                              right: 1,
                                              bottom: 15,
                                              top: 3,
                                            ),
                                            child: Container(
                                              height: 30,
                                              padding: EdgeInsets.all(2),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(13),
                                                border: Border.all(width: 1),
                                              ),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Icon(task.tag),
                                                  SizedBox(
                                                    width: 3,
                                                  ),
                                                  Text(
                                                    task.tagText,
                                                    style: TextStyle(
                                                        color: Colors
                                                            .grey.shade600,
                                                        fontSize: 12,
                                                        fontWeight:
                                                            FontWeight.w500),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          if ((task.notifiicon1 != null) &&
                                              (task.notifiicon2 != null))
                                            SizedBox(
                                              width: 140,
                                            ),
                                          if ((task.notifiicon1 != null) &&
                                              (task.notifiicon2 == null))
                                            SizedBox(width: 153),
                                          Icon(task.notifiicon1),
                                          Text(
                                            task.notifiText1,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Icon(task.notifiicon2),
                                          Text(
                                            task.notifiText2,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              contentPadding: EdgeInsets.only(
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
      ),
    );
  }
}
