import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class TaskList extends StatefulWidget {
  static const String routeName = "/Task";
  const TaskList({Key? key}) : super(key: key);

  @override
  State<TaskList> createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(197, 234, 152, 248),
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        actions: [
          Row(
            children: const [
              Text(
                'Task List',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(
                width: 130,
              ),
              Icon(
                Icons.edit_outlined,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.delete_outline,
                color: Colors.white,
                size: 30,
              ),
              SizedBox(
                width: 20,
              ),
            ],
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            width: double.maxFinite,
            height: 50,
            child: Row(
              children: const [
                SizedBox(
                  width: 50,
                ),
                Text(
                  'To Do',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF5946D2)),
                ),
                SizedBox(
                  width: 130,
                ),
                Text(
                  'Complate',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w700,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(right: 220),
            width: 160,
            height: 5,
            color: Color(0xFF5946D2),
          ),
          const SizedBox(
            height: 250,
          ),
          const Text(
            'Loading...',
            style: TextStyle(fontSize: 25, color: Colors.white),
          )
        ],
      ),
    );
  }
}
