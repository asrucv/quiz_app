import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:quiz_app/view/home.dart';
import 'package:quiz_app/controller/provider/providers.dart';

class FailedPage extends StatefulWidget {
  const FailedPage({super.key});

  @override
  State<FailedPage> createState() => _ResultPageFainalState();
}

class _ResultPageFainalState extends State<FailedPage> {
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
              onPressed: () {},
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
            Center(
              child: Lottie.network(
                  'https://assets7.lottiefiles.com/packages/lf20_t9nbbl1t.json'),
            ),
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
                      progressColor: Colors.orange,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 289),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15)),
                          backgroundColor: Colors.orange),
                      onPressed: () {},
                      child: const SizedBox(
                          width: 160,
                          height: 40,
                          child: Center(child: Text('Ooops...!')))),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 21),
                  child: TextButton(
                      onPressed: () {
                        getdata.questionintex = 0;
                        getdata.answerintex = 0;
                        getdata.mark = 0;
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => HomeScreen()),
                        );
                      },
                      child: const Text("Try Again.")),
                )
              ],
            ),
          ],
        ),
      );
    }));
  }
}
