
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_routes3/screen_one.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Getx Totorial'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           TextButton(
               onPressed: (){

                 // Getx with to other screen with data pass
                 // Get.to(ScreenOne(name: 'arshdeep',));

                 // get route with to other screen with data pass
                 Get.toNamed('/screenOne', arguments: [
                 //   array ki form me data bajege
                   'arshdeep sing'
                   'my name is this'
                 ]);

                 // Navigator.push(
                 //     context,
                 //     MaterialPageRoute(builder: (context) => ScreenOne()));
               },
               child: Text('Go to next screen'),
           )
        ],
      ),
    );
  }
}
