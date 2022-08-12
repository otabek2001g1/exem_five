import 'package:exem_five/exem/consts.dart';
import 'package:flutter/material.dart';

class Desctop extends StatefulWidget {
  static const String routeName = "/desctop";
  const Desctop({Key? key}) : super(key: key);

  @override
  State<Desctop> createState() => _DesctopState();
}

class _DesctopState extends State<Desctop> {
  late Size _size;
  @override
  void didChangeDependencies() {
    _size = MediaQuery.of(context).size;
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: _size.height,
          width: _size.width / 3,
          color: Colors.grey.withOpacity(0.7),
          child: Center(
            child: Container(
              height: _size.height / 1.5,
              width: _size.width / 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 30,
                    width: 100,
                    //margin: EdgeInsets.only(top: 248, left: 60),
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage(myImage.logo2),
                      fit: BoxFit.fill,
                    )),
                  ),
                  Container(
                    child: Text(
                      "Welcome to\n Uno To Do!",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }

  Future<void> WayOfPage() => Navigator.pushNamed(context, "/bonila");
}
