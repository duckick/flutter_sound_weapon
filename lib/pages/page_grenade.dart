import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';


class PageGrenade extends StatefulWidget {
  // const MyApp({Key? key}) : super(key: key);

  @override
  State<PageGrenade> createState() => _PageGrenadeState();
}

class _PageGrenadeState extends State<PageGrenade> with TickerProviderStateMixin {
  late final AnimationController _controller;
  var touchBool = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }


  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: GestureDetector(

        onTap: () {
          _controller.forward();
        },
        child: Center(
          child: Container(
            color: Colors.green,
            child: Lottie.asset('images/explosion.json',
            repeat: true,
            controller: _controller,
              onLoaded: (composition) {
              _controller ..duration = composition.duration;
              },
            ),
          ),
        )
      ),
    );
  }
}