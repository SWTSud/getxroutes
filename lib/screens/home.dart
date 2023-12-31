import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "This is Home Screen",
              style: TextStyle(color: Colors.deepPurple, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Set the background color
              ),
              child: const Text(
                "Next Screen",
                style: TextStyle(fontSize: 18),
              ),
            ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: () {
            Get.back(result: 'This data is from Home Screen');
          },
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.blue), // Set the background color
          ),
          child: const Text(
            "Back to Main Screen",
            style: TextStyle(fontSize: 18),
          ),
        ),
            const SizedBox(height: 20,),
            // Text(
            //   "${Get.arguments}",
            //   style: const TextStyle(color: Colors.green,fontSize: 20),
            // )
          ],
        ),
      ),
    );
  }
}
