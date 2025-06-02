import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({super.key});

  @override
  State<Category> createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  final List<String> categories = [
    'UI/UX',
    'Frontend',
    'Backend',
    'Fullstack',
  ];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: ListView.builder(
        itemCount: categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final isSelected = selectedIndex == index;
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            child: Container(
              margin: EdgeInsets.only(right: 10),
              width: 100,
              decoration: BoxDecoration(
                color: isSelected ? Colors.lightBlueAccent : Colors.transparent,
                border: Border.all(color: Colors.lightBlueAccent, width: 2),
                borderRadius: BorderRadius.circular(20),
              ),
              alignment: Alignment.center,
              child: Text(
                categories[index],
                style: TextStyle(
                  color: isSelected ? Colors.white : Colors.lightBlueAccent,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}