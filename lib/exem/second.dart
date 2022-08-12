import 'package:exem_five/exem/consts.dart';
import 'package:flutter/material.dart';
import 'package:exem_five/exem/bolila.dart';

class SecongPage extends StatefulWidget {
  static const String routeName = "/second";
  const SecongPage({Key? key}) : super(key: key);

  @override
  State<SecongPage> createState() => _SecongPageState();
}

class _SecongPageState extends State<SecongPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 108, left: 50),
              height: 330,
              width: 330,
              decoration: const BoxDecoration(
                image: DecorationImage(image: AssetImage(myImage.logo)),
                // color: Colors.amber
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 84, left: 50),
              child: Text(
                "Welcome to\n Uno To Do!",
                style: TextStyle(fontSize: 50),
              ),
            ),
            SizedBox(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "        Start using the best To Do app",
                    style: TextStyle(fontSize: 18, color: Color(0xFF5835E5)),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(top: 80, left: 45),
              height: 40,
              width: 310,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Color(0xFF5946D2),
              ),
              child: InkWell(
                onTap: () {
                  WayOfPage();
                  // Navigator.pushNamed(context, Bonila);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 12, left: 110),
                  child: Text(
                    "Get started",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Future<void> WayOfPage() => Navigator.pushNamed(context, "/bonila");
}
