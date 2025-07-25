
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_navigation_routes3/screen_two.dart';

class ScreenOne extends StatefulWidget {
  // Getx with to other screen with data pass
  // final String name ;
  // isse string ko constructor  me pass
  // const ScreenOne({Key? key ,  this.name = "" }) : super(key:key);

  // get route with to other screen with data pass
  var name;
  // const remove data dynamic
  ScreenOne({Key? key ,  this.name}) : super(key:key);

  @override
  State<ScreenOne> createState() => _ScreenOneState();
}

class _ScreenOneState extends State<ScreenOne> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // Getx with to other screen with data pass
        // title: Text('Screen One' + widget.name),

        // get route with to other screen with data pass
        //   array ki form me data bajega hai
        title: Text('Screen One' + Get.arguments[0]),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: (){

              // getx with
              Get.to(ScreenTwo());

              // flutter method
              // Navigator.pop(context);
            },
            child: Text('Go to screen'),
          )
        ],
      ),
    );
  }
}
