import 'package:flutter/material.dart';

class Courses extends StatelessWidget {
  final String imagePath;
  final String courseName;
  final String lessonCount;
  final String rating;
  const Courses({super.key, required this.imagePath, required this.courseName, required this.lessonCount, required this.rating});

  @override
  Widget build(BuildContext context) {
    return      InkWell(
      onTap: (){
        Navigator.pushNamed(context, 'coursedetail', arguments: {
          'imagePath': imagePath,
          'courseName': courseName,
          'lessonCount': lessonCount,
          'rating': rating,
          'price': '\$25', // Example price
          'description': 'This is a detailed description about the course: ' + courseName,
        });
      },
      child: Container(
                width: 170,
                height: 200,
        padding: EdgeInsets.only(right: 5,left: 5),
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 158, 187, 237),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 10,
              offset: Offset(0, 4),
            )
          ],
        ),
        child: Column(
          children: [
            // Course Image
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                imagePath,
                width: 150,
                height: 100,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 15),
            // Course Details
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    courseName,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        "$lessonCount lesson",
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey[600],
                        ),
                      ),
                      Spacer(),
                      Text(
                        rating ,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey[800],fontWeight: FontWeight.bold
                        ),
                      ),
                      
                      SizedBox(width: 4),
                      Icon(
                        Icons.star,
                        size: 16,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}