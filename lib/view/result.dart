import 'dart:io';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/view/home.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app/controller/provider/providers.dart';

class WinPage extends StatefulWidget {
  const WinPage({super.key});

  @override
  State<WinPage> createState() => _WinPageState();
}

class _WinPageState extends State<WinPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Consumer<FirstProvider>(builder: (context, getdata, child) {
      return Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 239, 239),
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 239, 239, 239),
          elevation: 0,
          leading: IconButton(
              onPressed: () {
                setState(() {
                  if (getdata.questionintex > 0) {
                    getdata.questionintex < getdata.questionNum - 1
                        ? {getdata.questionintex--, getdata.answerintex--}
                        : Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()),
                          );
                  }
                });
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          centerTitle: true,
          title: const Text(
            'Result',
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
        body: Stack(
          children: [
            Lottie.network(
                'https://assets9.lottiefiles.com/packages/lf20_wys2rrr6.json'),
            Column(
              children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 42),
                    child: CircularPercentIndicator(
                      animation: true,
                      radius: 75.0,
                      lineWidth: 16.0,
                      percent: getdata.mark / getdata.questionNum,
                      circularStrokeCap: CircularStrokeCap.round,
                      center: Text(
                        "${getdata.mark}/${getdata.questionNum}",
                        style: const TextStyle(
                            fontWeight: FontWeight.w700, fontSize: 15),
                      ),
                      progressColor: Colors.green,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 289),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.green),
                      onPressed: () {
                        getdata.questionintex = 0;
                        getdata.answerintex = 0;
                        getdata.mark = 0;
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => exit(0)),
                        );
                      },
                      child: const SizedBox(
                          width: 160,
                          height: 40,
                          child: Center(child: Text('Awesome!')))),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 31),
                  child: Text(
                    "Congratulations\nYou Passed the exam",
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }));
  }
}
