import 'package:flutter/material.dart';
import 'package:recipe_manager/widgets/meal_type_card.dart';
import 'package:recipe_manager/widgets/recipe_card.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(20, 30, 0, 10),
          child: Text(
            'Food Recipe',
            style: TextStyle(
              color: Theme.of(context).primaryColor,
              fontWeight: FontWeight.w800,
              fontSize: 24,
              letterSpacing: 0.5,
            ),
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Good Morning, \nDevina",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 22,
                ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage(
                    "https://cdn.pixabay.com/photo/2018/03/01/14/57/portrait-3190849_1280.jpg"),
              )
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              //wrap with expanded widget so as to display search field
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey.shade200,
                        ),
                        borderRadius: BorderRadius.zero),
                    hintText: 'Search recipe here...',
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                padding: EdgeInsets.all(16.5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.shade200),
                ),
                child: Icon(
                  Icons.tune,
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          ),
        ),
        Container(
          height: 110.0,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              MealTypeCard(
                title: 'BreakFast',
                icon: Icons.breakfast_dining,
              ),
              MealTypeCard(
                title: 'Lunch',
                icon: Icons.lunch_dining,
              ),
              MealTypeCard(
                title: 'Desert',
                icon: Icons.icecream,
              ),
              MealTypeCard(
                title: 'Dinner',
                icon: Icons.dinner_dining,
              ),
            ],
          ),
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(20, 20, 0, 10),
          child: const Text(
            'Popular Recipe',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              RecipeCard(
                imgSrc:
                    'https://images.unsplash.com/photo-1546069901-ba9599a7e63c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=580&q=80',
                title: 'Vegetables',
                prepTime: '20 mins',
                cookTime: '15 mins',
              ),
              //  RecipeCard(),
              //   RecipeCard(),
              //    RecipeCard(),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
