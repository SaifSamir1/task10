// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// lib/screens/lists_cards_screen.dart

import 'package:swd_app/task10/dummy_data.dart';

class ListsCardsScreen extends StatefulWidget {
  const ListsCardsScreen({super.key});

  @override
  State<ListsCardsScreen> createState() => _ListsCardsScreenState();
}

class _ListsCardsScreenState extends State<ListsCardsScreen> {
  bool _isListView = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(),
        title: const Text(
          'Lists & Cards',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          Icon(
            !_isListView ? Icons.grid_view : Icons.list,
            color: Colors.black,
            size: 24,
          ),
        ],
      ),
      backgroundColor: const Color(0xFFF5F5F5),
      body: Column(
        children: [
          Switch(
            value: _isListView,
            onChanged: (value) {
              setState(() {
                _isListView = !_isListView;
              });
            },
          ),
          Expanded(
            child: AnimatedSwitcher(
              duration: const Duration(milliseconds: 300),
              child: !_isListView ? _buildListView() : _buildGridView(),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildListView() {
    return ListView.builder(
      key: const ValueKey('listview'),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: fruits.length,
      itemBuilder: (context, index) {
        final fruit = fruits[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: FruitListCard(fruit: fruit),
        );
      },
    );
  }

  Widget _buildGridView() {
    return GridView.builder(
      key: const ValueKey('gridview'),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
        childAspectRatio: 0.85,
      ),
      itemCount: fruits.length,
      itemBuilder: (context, index) {
        final fruit = fruits[index];
        return FruitGridCard(fruit: fruit);
      },
    );
  }
}

class FruitListCard extends StatelessWidget {
  final FruitItem fruit;

  const FruitListCard({super.key, required this.fruit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: fruit.color,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Text(
                fruit.id.toString(),
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  fruit.name,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF333333),
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  fruit.description,
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
              ],
            ),
          ),
          const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
        ],
      ),
    );
  }
}

class FruitGridCard extends StatelessWidget {
  final FruitItem fruit;

  const FruitGridCard({super.key, required this.fruit});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [fruit.color2, fruit.color]),
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 8,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Icon(Icons.favorite, color: Colors.white, size: 55)),
          const SizedBox(height: 12),
          Text(
            fruit.name,
            style: const TextStyle(
              fontSize: 19,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
