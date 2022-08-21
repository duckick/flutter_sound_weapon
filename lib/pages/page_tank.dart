import 'package:flutter/material.dart';

class PageTank extends StatelessWidget {
  const PageTank({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('PageTank',
        style: TextStyle(
          fontSize: 40,
        ),),
      )
    );
  }
}
