import 'package:flutter/material.dart';
import 'package:mealsapp/data/category_data.dart';
import 'package:mealsapp/models/category.dart';
import 'package:mealsapp/widgets/category_card.dart';

// Global State - Global State Management
class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    List<Category> categoryList = categories;

    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text(
        "RESTAURANT MENU",
        style: TextStyle(fontWeight: FontWeight.bold),
      ))),
      // Inkwell, GestureDetector
      body: GridView(
        padding: const EdgeInsets.all(16),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 25,
            mainAxisSpacing: 5,
            childAspectRatio: 1),
        children: categoryList
            .map((e) => Center(
                  child: CategoryCard(
                    color: e.color,
                    name: e.name,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
