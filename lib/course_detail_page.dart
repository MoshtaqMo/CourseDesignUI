import 'package:flutter/material.dart';

class CourseDetailPage extends StatelessWidget {
  final String imagePath;
  final String courseName;
  final String lessonCount;
  final String rating;
  final String price;
  final String description;

  const CourseDetailPage({
    super.key,
    required this.imagePath,
    required this.courseName,
    required this.lessonCount,
    required this.rating,
    required this.price,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(courseName),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    imagePath,
                    width: double.infinity,
                    height: 220,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Text(
                courseName,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.menu_book, color: Colors.blue),
                  SizedBox(width: 6),
                  Text('$lessonCount lessons', style: TextStyle(fontSize: 16)),
                  SizedBox(width: 20),
                  Icon(Icons.star, color: Colors.orange),
                  SizedBox(width: 4),
                  Text(rating, style: TextStyle(fontSize: 16)),
                  SizedBox(width: 20),
                  Icon(Icons.attach_money, color: Colors.green),
                  SizedBox(width: 4),
                  Text(price, style: TextStyle(fontSize: 16)),
                ],
              ),
              SizedBox(height: 20),
              Text(
                'About this course',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                description,
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightBlueAccent,
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  onPressed: () {},
                  child: Text('Enroll Now', style: TextStyle(fontSize: 18)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
} 