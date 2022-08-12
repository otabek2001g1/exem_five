import 'dart:ui';

import 'package:exem_five/exem/bolila.dart';
import 'package:exem_five/exem/destop.dart';

import 'package:exem_five/exem/first.dart';
import 'package:exem_five/exem/second.dart';
import 'package:exem_five/exem/taskList.dart';
import 'package:exem_five/pacage/paper.dart';
import 'package:exem_five/ui/burger.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        "/paper": (context) => const Paper(),
        "/burger": (context) => Burger(),
        "/first": (context) => const FirstPage(),
        "/second": (context) => const SecongPage(),
        "/bonila": (context) => const Bonila(),
        "/desctop": (context) => const Desctop(),
        "/Task": (context) => const TaskList()
      },
      home: const SecongPage(),
    );
  }
}
