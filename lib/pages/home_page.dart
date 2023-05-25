import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          padding: EdgeInsets.fromLTRB(20, 30, 0, 10),
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
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Good Morning, \nDevina",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22,
              ),
              ),
              CircleAvatar(radius: 30, backgroundImage: NetworkImage("https://cdn.pixabay.com/photo/2018/03/01/14/57/portrait-3190849_1280.jpg"),
              )
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.all(20),
          child: Row(
            children: [
              TextField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  prefixIcon: Icon(Icons.search, color: Colors.black,),
                  enabledBorder: OutlineInputBorder(borderSide: BorderSide(color: Colors.grey.shade200))
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
