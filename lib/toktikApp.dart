import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:toktik_flutter/screens/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TokTik",
      home: const HomePage(),
      theme: ThemeData.dark(),

    );
  }
}
