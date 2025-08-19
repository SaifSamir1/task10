// lib/screens/flutter_components_screen.dart
// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:swd_app/task10/gesture_layout.dart';
import 'package:swd_app/task10/layout_screen.dart';
import 'package:swd_app/task10/list_card_dimo.dart';

class FlutterComponentsScreen extends StatelessWidget {
  const FlutterComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter UI Components',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        backgroundColor: const Color(0xFF2196F3),
        elevation: 0,
        centerTitle: false,
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildComponentCard(
                context: context,
                icon: Icons.view_list,
                iconColor: const Color(0xFF2196F3),
                title: 'Lists & Cards Demo',
                buttonText: 'Go to Lists',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ListsCardsScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              _buildComponentCard(
                context: context,
                icon: Icons.touch_app,
                iconColor: const Color(0xFF4CAF50),
                title: 'Gestures Demo',
                buttonText: 'Go to Gestures',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const DragDropScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(height: 16),
              _buildComponentCard(
                context: context,
                icon: Icons.dashboard,
                iconColor: const Color(0xFF9C27B0),
                title: 'Layout Widgets Demo',
                buttonText: 'Go to Layouts',
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LayoutWidgets(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildComponentCard({
    required BuildContext context,
    required IconData icon,
    required Color iconColor,
    required String title,
    required String buttonText,
    required VoidCallback onTap,
  }) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: 55,
              height: 55,
              decoration: BoxDecoration(
                color: iconColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Icon(icon, size: 40, color: iconColor),
            ),
            const SizedBox(height: 16),
            Text(
              title,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF333333),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: onTap, child: Text(buttonText)),
          ],
        ),
      ),
    );
  }
}
