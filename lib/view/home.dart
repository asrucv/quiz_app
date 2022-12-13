// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/view/finalresult.dart';
import 'package:quiz_app/controller/provider/providers.dart';
// import 'package:quiz_app/finalresult.dart';
import 'package:quiz_app/view/result.dart';
import 'package:quiz_app/controller/utilities/list.dart';

// ignore: must_be_immutable
class HomeScreen extends StatelessWidget {
  // ignore: prefer_const_constructors_in_immutables
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Consumer<FirstProvider>(builder: (context, getdata, child) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 240, 238, 238),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 239, 239, 239),
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                // exit(0);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          centerTitle: true,
          title: const Text(
            'Quiz',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 27, top: 4),
                  child: Container(
                    height: 35,
                    width: 68,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        const BoxShadow(
                            color: Color.fromARGB(36, 0, 0, 0),
                            blurRadius: 5,
                            offset: Offset(0, 8))
                      ],
                      color: Colors.white,
                    ),
                    child: Center(
                        child: Text(
                      '${getdata.questionintex + 1}/${getdata.questionNum}',
                      style: const TextStyle(
                          fontWeight: FontWeight.w700, fontSize: 14),
                    )),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Text(
                    qustions[getdata.questionintex],
                    style: const TextStyle(
                        fontSize: 15, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            const Divider(
              indent: 25,
              endIndent: 25,
            ),
            const SizedBox(
              height: 27,
            ),
            Container(
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                boxShadow: [
                  BoxShadow(
                      color: Color.fromARGB(45, 0, 0, 0),
                      blurRadius: 5,
                      offset: Offset(0, 8)),
                ],
                shape: BoxShape.circle,
                color: Colors.white,
              ),
              child: const Icon(Icons.question_mark),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                "Choose an answer",
                style: TextStyle(
                    color: Color(0xFF656363),
                    fontWeight: FontWeight.w700,
                    fontSize: 14),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                width: 322,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) =>
                                getdata.buttonA ? Colors.black : Colors.blue)),
                    onPressed: () {
                      getdata.optionA();
                    },
                    child: Row(
                      children: [
                        const Text(
                          'A.',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: Color(0xFFD4D4D4)),
                        ),
                        const SizedBox(
                          width: 42,
                        ),
                        Text(
                          answers[getdata.answerintex][0],
                          style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: Color(0xFFFFF8FF)),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                width: 322,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) =>
                                getdata.buttonB ? Colors.black : Colors.blue)),
                    onPressed: () {
                      getdata.optionB();
                    },
                    child: Row(
                      children: [
                        const Text(
                          'B.',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: Color(0xFFD4D4D4)),
                        ),
                        const SizedBox(
                          width: 42,
                        ),
                        Text(
                          answers[getdata.answerintex][1],
                          style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: Color(0xFFFFF8FF)),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                width: 322,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) =>
                                getdata.buttonC ? Colors.black : Colors.blue)),
                    onPressed: () {
                      getdata.optionC();
                    },
                    child: Row(
                      children: [
                        const Text(
                          'C.',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: Color(0xFFD4D4D4)),
                        ),
                        const SizedBox(
                          width: 42,
                        ),
                        Text(
                          answers[getdata.answerintex][2],
                          style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: Color(0xFFFFF8FF)),
                        )
                      ],
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 45,
                width: 322,
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateColor.resolveWith(
                            (states) =>
                                getdata.buttonD ? Colors.black : Colors.blue)),
                    onPressed: () {
                      getdata.optionD();
                    },
                    child: Row(
                      children: [
                        const Text(
                          'D.',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: Color(0xFFD4D4D4)),
                        ),
                        const SizedBox(
                          width: 42,
                        ),
                        Text(
                          answers[getdata.answerintex][3],
                          style: const TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 15,
                              color: Color(0xFFFFF8FF)),
                        )
                      ],
                    )),
              ),
            ),
            getdata.buttonintex > 0
                ? Padding(
                    padding: const EdgeInsets.only(left: 231, top: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        width: 92,
                        height: 45,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                shadowColor: Colors.black,
                                elevation: 5),
                            onPressed: () {
                              getdata.allButton();
                              getdata.markIncriment();

                              if (getdata.mark > 2) {
                                getdata.questionintex < getdata.questionNum - 1
                                    ? {
                                        getdata.questionintex++,
                                        getdata.answerintex++
                                      }
                                    : Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const WinPage()),
                                      );
                              } else {
                                getdata.questionintex < getdata.questionNum - 1
                                    ? {
                                        getdata.questionintex++,
                                        getdata.answerintex++
                                      }
                                    : Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const FailedPage()),
                                      );
                              }
                            },
                            child: Row(
                              children: [
                                const Text(
                                  "Next",
                                  style: TextStyle(color: Colors.blue),
                                ),
                                const SizedBox(
                                  width: 2,
                                ),
                                const Icon(
                                  Icons.arrow_forward,
                                  color: Colors.blue,
                                )
                              ],
                            )),
                      ),
                    ),
                  )
                : const SizedBox()
          ],
        ),
      );
    }));
  }
}
