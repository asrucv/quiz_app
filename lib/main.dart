import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/view/home.dart';
import 'package:quiz_app/controller/provider/providers.dart';

void main() {
  runApp(ChangeNotifierProvider(create: (context) => FirstProvider(),
    child:  MaterialApp(
      home: HomeScreen(),
    ),
  ));
}

