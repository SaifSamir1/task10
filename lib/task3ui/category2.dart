import 'package:flutter/material.dart';

class CategoryTwo extends StatelessWidget {
  const CategoryTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Category Screen Two"),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.settings))],
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: GridView.count(
          crossAxisCount: 3,
          crossAxisSpacing: 7,
          mainAxisSpacing: 7,
          children: List.generate(30, (index) {
            return Card(
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.blue[200]!, Colors.blue[500]!],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.category, size: 40, color: Color(0xffffffff)),
                    SizedBox(height: 5),
                    Text(
                      "${index + 1}",
                      style: TextStyle(color: Color(0xffffffff), fontSize: 16),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}
