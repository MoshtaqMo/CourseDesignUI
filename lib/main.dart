import 'package:designcourseui/course_page.dart';
import 'package:designcourseui/course_detail_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoursePage(),
      onGenerateRoute: (settings) {
        if (settings.name == 'coursedetail') {
          final args = settings.arguments as Map<String, dynamic>;
          return MaterialPageRoute(
            builder: (context) => CourseDetailPage(
              imagePath: args['imagePath'] ?? '',
              courseName: args['courseName'] ?? '',
              lessonCount: args['lessonCount'] ?? '',
              rating: args['rating'] ?? '',
              price: args['price'] ?? '\$25', // default price
              description: args['description'] ?? 'This is a detailed description of the course.',
            ),
          );
        }
        return null;
      },
    );
  }
}