import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxroutes/screens/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Navigation",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Navigation"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () async {
                    // Get.to(
                    //   Home(),
                    //   //To make the full screen dialog
                    //   fullscreenDialog: true,
                    //   //To provide Animations
                    //   transition: Transition.zoom,
                    //   //Duration of transition
                    //   // duration: Duration(milliseconds: 2000),
                    //   //Curve Animation
                    //   curve: Curves.bounceInOut,
                    // );
                    //Got to the home screen No option to come back to the main screen
                    // Get.off(Home());
                    //Go to home and cancel all previous screen
                    //Get.offAll(Home());
                    //Go to the next screen with some data
                    // Get.to(Home(),arguments: "Data From Main");
                    //Go to next screen and receive data sent from home screen
                    var data = await Get.to(Home());
                    print("The Received Data is $data");
                  },
                  child: Text("Go to Home Screen"))
            ],
          ),
        ),
      ),
    );
  }
}
