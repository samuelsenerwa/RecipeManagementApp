import 'package:flutter/material.dart';
import 'package:recipe_manager/widgets/meal_grid_tile.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
          child: const Text(
            'Category',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.w800,
              fontSize: 24,
            ),
          ),
        ),
        Expanded(
          child: GridView.count(
            padding: const EdgeInsets.all(20),
            crossAxisCount: 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
            childAspectRatio: ((MediaQuery.of(context).size.width / 2) / 250),
            children: [
              MealGridTile(
                imgSrc:
                    'https://images.unsplash.com/photo-1484723091739-30a097e8f929?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGZvb2R8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=600&q=60',
                title: 'BreakFast',
              ),
              MealGridTile(
                imgSrc:
                    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80',
                title: 'Dinner',
              ),
              MealGridTile(
                imgSrc:
                    'https://images.unsplash.com/photo-1567620905732-2d1ec7ab7445?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=480&q=80',
                title: 'Snack',
              ),
              MealGridTile(
                imgSrc:
                    'https://images.unsplash.com/photo-1555939594-58d7cb561ad1?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
                title: 'Lunch',
              ),
              MealGridTile(
                imgSrc:
                    'https://images.unsplash.com/photo-1628585352636-f4a24c2e17d5?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fGljZWNyZWFtfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60',
                title: 'Branch',
              ),
              MealGridTile(
                imgSrc:
                    'https://images.unsplash.com/photo-1627222295124-f8b3fc09e47f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTJ8fGljZWNyZWFtfGVufDB8fDB8fHww&auto=format&fit=crop&w=600&q=60',
                title: 'Dessert',
              ),
            ],
          ),
        )
      ],
    );
  }
}
