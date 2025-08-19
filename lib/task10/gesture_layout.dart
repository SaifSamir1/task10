import 'package:flutter/material.dart';

class DragDropScreen extends StatefulWidget {
  const DragDropScreen({super.key});

  @override
  State<DragDropScreen> createState() => _DragDropScreenState();
}

class _DragDropScreenState extends State<DragDropScreen> {
  Color targetColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Gesture Demo',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [Icon(Icons.touch_app)],
      ),
      body: SafeArea(child: DraggableCirclesPage()),
    );
  }
}

class DraggableCirclesPage extends StatelessWidget {
  const DraggableCirclesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        DraggableCircle(
          initialX: 50,
          initialY: 100,
          size: 80,
          color: Colors.red,
          icon: Icons.list_rounded,
        ),
        DraggableCircle(
          initialX: 150,
          initialY: 250,
          size: 100,
          color: Colors.blue,
          icon: Icons.touch_app,
        ),
        DraggableCircle(
          initialX: 250,
          initialY: 400,
          size: 60,
          color: Colors.yellow,
          icon: Icons.star,
        ),
      ],
    );
  }
}

class DraggableCircle extends StatefulWidget {
  final double initialX;
  final double initialY;
  final double size;
  final Color color;
  final IconData icon;

  const DraggableCircle({
    super.key,
    required this.initialX,
    required this.initialY,
    required this.size,
    required this.color,
    required this.icon,
  });

  @override
  State<DraggableCircle> createState() => _DraggableCircleState();
}

class _DraggableCircleState extends State<DraggableCircle> {
  late double x;
  late double y;

  @override
  void initState() {
    super.initState();
    x = widget.initialX;
    y = widget.initialY;
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: x,
      top: y,
      child: GestureDetector(
        onPanUpdate: (details) {
          setState(() {
            x += details.delta.dx;
            y += details.delta.dy;
          });
        },
        child: Container(
          width: widget.size,
          height: widget.size,
          decoration: BoxDecoration(
            color: widget.color,
            shape: BoxShape.circle,
          ),
          child: Icon(widget.icon, color: Colors.white, size: widget.size / 2),
        ),
      ),
    );
  }
}
