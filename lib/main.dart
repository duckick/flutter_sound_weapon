import 'package:flutter/material.dart';
import 'package:flutter_sound_weapon/controller/controller.dart';
import 'package:flutter_sound_weapon/pages/page_grenade.dart';
import 'package:flutter_sound_weapon/pages/page_gun.dart';
import 'package:flutter_sound_weapon/pages/page_plane.dart';
import 'package:flutter_sound_weapon/pages/page_tank.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      home: MainPage(),
    );
  }
}



class MainPage extends StatelessWidget {
  // const MainPage({Key? key}) : super(key: key);
  Controller controller = Get.put(Controller() );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(

        child: GridView(
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 4),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 6.0,
            crossAxisSpacing: 6.0,

          ),
          children: [
            GestureDetector(
              onTap: () {
                Get.to(PageGun() );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Center(
                  child: Text('Container1'),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {Get.to(PageGrenade());},
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.red,
                  borderRadius: BorderRadius.circular(10.0)
                ),
                child: Center(
                  child: Text('Container2'),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {Get.to(PagePlane());},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Center(
                  child: Text('Container3'),
                ),
              ),
            ),

            GestureDetector(
              onTap: () {Get.to(PageTank());},
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(10.0)
                ),
                child: Center(
                  child: Text('Container4'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


