// بيانات العناصر
import 'dart:ui';

final List<FruitItem> fruits = [
  FruitItem(
    id: 1,
    name: 'Apple',
    description: 'This is Apple description',
    color: const Color.fromARGB(255, 215, 42, 42),
    icon: '🍎',
    color2: const Color.fromARGB(255, 205, 104, 104),
  ),
  FruitItem(
    id: 2,
    name: 'Banana',
    description: 'This is Banana description',
    color: const Color(0xFFFDD835),
    icon: '🍌',
    color2: const Color.fromARGB(255, 238, 215, 124),
  ),
  FruitItem(
    id: 3,
    name: 'Orange',
    description: 'This is Orange description',
    color: const Color(0xFFFF9800),
    icon: '🍊',
    color2: const Color.fromARGB(255, 228, 178, 103),
  ),
  FruitItem(
    id: 4,
    name: 'Mango',
    description: 'This is Mango description',
    color: const Color.fromARGB(255, 45, 188, 52), // أخضر
    icon: '🥭',
    color2: const Color.fromARGB(255, 109, 240, 116),
  ),
  FruitItem(
    id: 5,
    name: 'Grapes',
    description: 'This is Grapes description',
    color: const Color.fromARGB(255, 155, 42, 175), // بنفسجي
    icon: '🍇',
    color2: const Color.fromARGB(255, 211, 111, 229),
  ),
  FruitItem(
    id: 6,
    name: 'Strawberry',
    description: 'This is Strawberry description',
    color: const Color(0xFFE91E63), // وردي
    icon: '🍓',
    color2: const Color.fromARGB(255, 216, 102, 138),
  ),
];

class FruitItem {
  final int id;
  final String name;
  final String description;
  final Color color;
  final Color color2;
  final String icon;

  const FruitItem({
    required this.id,
    required this.name,
    required this.description,
    required this.color,
    required this.icon,
    required this.color2,
  });
}
