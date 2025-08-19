import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 70),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 100,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                  shape: BoxShape.rectangle,
                ),
                child: Center(child: Text("Trapped")),
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 380,
                height: 120,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.rectangle,
                ),
                child: Center(child: Text("Drag Me")),
              ),
            ),
            SizedBox(height: 40),
            Transform.rotate(
              angle: .5,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(color: Colors.red),
                child: Center(child: Text("Rotate Me")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
