import 'package:exem_five/exem/consts.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  static const String routeName = "/first";
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            widthFactor: 150,
            heightFactor: 150,
            child:
                Image(image: AssetImage(myImage.image1), fit: BoxFit.cover)));
  }
}
