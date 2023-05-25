import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String imgSrc;
  final String prepTime;
  final String cookTime;

  RecipeCard({
    required this.imgSrc,
    required this.title,
    required this.prepTime,
    required this.cookTime,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.only(left: 20),
          width: 120,
          child: Image.network(
            this.imgSrc,
          ),
        ),
        Container(
          width: 160,
          height: 90,
          color: Colors.white,
          padding: const EdgeInsets.only(left: 10),
          child: Column(
            children: [
              Text(
                this.title,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
