import 'package:exem_five/exem/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Bonila extends StatefulWidget {
  static const String routeName = "/bonila";
  const Bonila({Key? key}) : super(key: key);

  @override
  State<Bonila> createState() => _BonilaState();
}

class _BonilaState extends State<Bonila> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(top: 44, left: 18),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(50),
                          color: Color(0xFF5946D2)),
                      child: Container(
                        margin: EdgeInsets.only(top: 7, left: 6),
                        child: Text(
                          "AB",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 15),
                    child: Text(
                      "Antonio Bonilla",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 130),
                    child: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 22),
                    child: Icon(
                      Icons.star_rate,
                      size: 40,
                      color: Color(0xFFF85977),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 18),
                    child: Text(
                      "Important",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 200),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 22),
                    child: Icon(
                      Icons.star_rate,
                      size: 40,
                      color: Color(0xFFF85977),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 18),
                    child: Text(
                      "Tasks",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 248),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 23,
              ),
              Divider(
                thickness: 1,
                // height: 2,
                color: Colors.grey,
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 22),
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Color(0xFFC8BFFF),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 18),
                    child: Text(
                      "Task List",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 220),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 22),
                    child: Icon(
                      Icons.list,
                      size: 30,
                      color: Color(0xFFC8BFFF),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 18),
                    child: Text(
                      "House List",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 23,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 44, left: 200),
                    child: Icon(
                      Icons.arrow_forward_ios_rounded,
                      size: 20,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 400,
              ),
              InkWell(
                onTap: () {
                  WarningShover();
                },
                child: Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 12),
                        child: Row(
                          children: [
                            Container(
                              child: Icon(
                                Icons.add,
                                size: 30,
                                color: Color(0xFFC8BFFF),
                              ),
                            ),
                            Container(
                              child: Text(
                                "New List",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 23,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> WarningShover() => showDialog(
      context: context,
      builder: (context) => AlertDialog(
            backgroundColor: Colors.white,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            title: const Text("New List"),
            content: const TextField(
              decoration: InputDecoration(hintText: "Enter list title"),
            ),
            actions: [
              TextButton(
                  onPressed: () {
                    WayOfTask();
                  },
                  child: const Text("+ Create"))
            ],
          ));
  Future<void> WayOfTask() => Navigator.pushNamed(context, '/Task');
}
