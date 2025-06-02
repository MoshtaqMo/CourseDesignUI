import 'package:designcourseui/category.dart';
import 'package:designcourseui/courses.dart';
import 'package:designcourseui/images.dart';
import 'package:flutter/material.dart';

class CoursePage extends StatelessWidget {
  const CoursePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Choose your"),
                        Text(
                          "Design Course",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(radius: 27),
                  ],
                ),
                Container(
                  padding: EdgeInsets.only(left: 5, right: 10),
                  height: 40,
                  width: 300,
                  decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Search for course"), Icon(Icons.search)],
                  ),
                ),

                SizedBox(height: 10),
                Text(
                  "Category",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                SizedBox(height: 10),

                Category(),

                SizedBox(height: 20),
                Container(
                  width: 250,
                  height: 120,
                  padding: EdgeInsets.only(right: 5),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 158, 187, 237),
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Row(
                    children: [
                      // Course Image
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: Image.asset(
                          AppImages.app,
                          width: 90,
                          height: 110,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(width: 12),
                      // Course Details
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "User interface\nDesign",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text(
                                  "26 lesson",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.grey[600],
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  "4.3",
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.grey[800],
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),

                                SizedBox(width: 4),
                                Icon(Icons.star, size: 16, color: Colors.blue),
                              ],
                            ),
                            SizedBox(height: 6),
                            Row(
                              children: [
                                Text(
                                  "\$25",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.blue,
                                  ),
                                ),
                                Spacer(),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  padding: EdgeInsets.all(6),
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.white,
                                    size: 20,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Popular Course",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(height: 10),

                Wrap(
                  spacing: 20,

                  runSpacing: 20,
                  children: [
                    Courses(
                      imagePath: AppImages.app,
                      courseName: 'User interface\nDesign',
                      lessonCount: '26 ',
                      rating: "4.5",
                    ),
                    Courses(
                      imagePath: AppImages.wibSite,
                      courseName: 'Web Design\nCourse',
                      lessonCount: '57',
                      rating: "4.0",
                    ),
                    Courses(
                      imagePath: AppImages.backEnd,
                      courseName: 'Back End\nDevelopment',
                      lessonCount: '30',
                      rating: "5.0",
                    ),
                    Courses(
                      imagePath: AppImages.frontEnd,
                      courseName: 'Front End\nDevelopment',
                      lessonCount: '28',
                      rating: "4.5",
                    ),
                    Courses(
                      imagePath: AppImages.language,
                      courseName: 'Language\nDevelopment',
                      lessonCount: '28',
                      rating: "4.5",
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
