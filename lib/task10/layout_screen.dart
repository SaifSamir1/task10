import 'package:flutter/material.dart';

class LayoutWidgets extends StatelessWidget {
  const LayoutWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    double progressValue = 0.65; // 65% (بعد النص بشوية)

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Layout Widgets',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Column Example:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 194, 228, 220),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.blue,
                      child: Icon(Icons.cloud, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    CircleAvatar(
                      backgroundColor: Colors.amber,
                      child: Icon(Icons.sunny, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                    CircleAvatar(
                      backgroundColor: Colors.deepPurpleAccent,
                      child: Icon(Icons.nightlight_round, color: Colors.white),
                    ),
                    SizedBox(height: 10),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Container Example:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      const Color.fromARGB(255, 109, 52, 208),
                      Colors.blue,
                      const Color.fromARGB(255, 10, 116, 14),
                    ],
                  ),
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    'Gradiant Container',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 120,
                width: double.infinity,

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.blue, width: 4),
                ),
                child: Center(
                  child: Text(
                    'Border Container With Padding ',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Adational UI Widgets:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.blueGrey),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.person),
                        SizedBox(width: 5),
                        Text('User'),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.blueGrey),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.location_on),
                        SizedBox(width: 5),
                        Text('Location'),
                      ],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.blueGrey),
                    ),
                    child: Row(
                      children: [
                        Icon(Icons.car_repair_rounded),
                        SizedBox(width: 5),
                        Text('Travale'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  SizedBox(
                    width: 320,
                    child: LinearProgressIndicator(
                      value: progressValue,
                      color: Colors.deepPurple,
                      backgroundColor: Colors.grey[300],
                      minHeight: 8,
                    ),
                  ),
                  SizedBox(width: 20),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: CircularProgressIndicator(color: Colors.deepPurple),
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(thickness: 4, color: Colors.grey),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Navigation Button'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
