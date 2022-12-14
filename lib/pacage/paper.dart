import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:io' show Platform;

class Paper extends StatefulWidget {
  static const String routeName = "/paper";
  const Paper({super.key});

  @override
  State<Paper> createState() => _PaperState();
}

class _PaperState extends State<Paper> {
  late Size _size;
  late bool? _isLoading;
  late bool? _isMobile;
  @override
  void didChangeDependencies() {
    _size = MediaQuery.of(context).size;
    _isLoading = true;
    _isMobile = _size.width < 500;
    print(_isMobile);
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant Paper oldWidget) {
    print('did update widget');
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _isMobile! ? AppBar() : null,
      drawer: Drawer(
        child: ColoredBox(
          color: Colors.red,
          child: Column(
            children: const [
              FlutterLogo(),
            ],
          ),
        ),
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth > 500) {
              //desktop ui widget
              return desktopBody!;
            }
            //mobile ui widget
            return mobileBody!;
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _isLoading = !_isLoading!;
          setState(() {});
        },
        child: const Icon(Icons.play_arrow),
      ),
    );
  }

//desktop ui widget
  Widget? get desktopBody {
    return Row(
      children: [
        //custom drawer
        Expanded(
            flex: 4,
            child: ColoredBox(
              color: Colors.red,
              child: Column(
                children: const [
                  FlutterLogo(),
                ],
              ),
            )),

        //mobile body
        Expanded(flex: 10, child: mobileBody!)
      ],
    );
  }

  ///mobile ui widget
  Widget? get mobileBody {
    return ListView.builder(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemCount: 100,
        itemBuilder: (context, index) => const ListTile(
              title: Text('Salom'),
              leading: FlutterLogo(),
            ));
  }

  ///adoptive platform
  Widget get adoptiveProgresIndicator {
    if (Platform.isIOS || Platform.isMacOS) {
      return const SizedBox(
        height: 60,
        width: 60,
        child: CupertinoActivityIndicator(),
      );
    }
    return const SizedBox(
      height: 60,
      width: 60,
      child: CircularProgressIndicator(
        strokeWidth: 20,
      ),
    );
  }
}
