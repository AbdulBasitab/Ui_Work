import 'package:flutter/material.dart';

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
          child: Expanded(
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
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
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
                        width: 10,
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
                  height: 25,
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              right: 10,
                              bottom: 3,
                            ),
                            child: Row(
                              children: [
                                Checkbox(
                                    activeColor: Colors.white,
                                    checkColor: Colors.blue,
                                    value: check1,
                                    onChanged: (bool? val) {
                                      setState(() {
                                        check1 = val!;
                                      });
                                    }),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Design Signup Flow..',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 52,
                            ),
                            child: Text(
                              'By the Time a prospecct arrives at your signup page, in most cases theyve already evaluat... ',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    border: Border.all(color: Colors.black26),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(left: 0),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.color_lens_outlined,
                                          size: 30,
                                          color: Colors.black26,
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          'Design',
                                          style: TextStyle(
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  height: 30,
                                ),
                              ),
                              SizedBox(
                                width: 110,
                              ),
                              Icon(
                                Icons.wallpaper_sharp,
                                color: Colors.black26,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              Icon(
                                Icons.messenger_outline_rounded,
                                color: Colors.black26,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '3',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                  child: Container(
                    height: 150,
                    width: 10,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                  activeColor: Colors.white,
                                  checkColor: Colors.blue,
                                  value: check2,
                                  onChanged: (bool? val) {
                                    setState(() {
                                      check2 = val!;
                                    });
                                  }),
                              SizedBox(
                                width: 7,
                              ),
                              Text(
                                'Landing Page content..',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 54),
                            child: Text(
                              'Writing the content of the new landing page and prepare the assets for the different sections...',
                              style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white70,
                                      border: Border.all(color: Colors.black26),
                                      shape: BoxShape.rectangle,
                                      borderRadius: BorderRadius.circular(5),
                                    ),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.monetization_on_outlined,
                                          size: 30,
                                          color: Colors.black26,
                                        ),
                                        SizedBox(
                                          width: 2,
                                        ),
                                        Text(
                                          'Marketing',
                                          style: TextStyle(
                                            color: Colors.black45,
                                          ),
                                        ),
                                      ],
                                    ),
                                    height: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 120,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                activeColor: Colors.white,
                                checkColor: Colors.blue,
                                value: check3,
                                onChanged: (bool? val) {
                                  setState(() {
                                    check3 = val!;
                                  });
                                }),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Design Use case Page..',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 54),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white70,
                                    border: Border.all(color: Colors.black26),
                                    shape: BoxShape.rectangle,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.color_lens_outlined,
                                        size: 30,
                                        color: Colors.black26,
                                      ),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text(
                                        'Design',
                                        style: TextStyle(
                                          color: Colors.black45,
                                        ),
                                      ),
                                    ],
                                  ),
                                  height: 35,
                                ),
                              ),
                              SizedBox(
                                width: 150,
                              ),
                              Icon(
                                Icons.messenger_outline_rounded,
                                color: Colors.black26,
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Text(
                                '1',
                                style: TextStyle(
                                  color: Colors.black38,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 10,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Checkbox(
                                activeColor: Colors.white,
                                checkColor: Colors.blue,
                                value: check4,
                                onChanged: (bool? val) {
                                  setState(() {
                                    check4 = val!;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'Define a new tool for metrics..',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
/*


*/
