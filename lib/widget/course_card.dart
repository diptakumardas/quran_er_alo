import 'package:flutter/material.dart';

class CourseCard extends StatefulWidget {
  const CourseCard({super.key});

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.lightBlueAccent.shade100,
        ),
        height: 230,
        width: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              "images/q1.jpg",
              filterQuality: FilterQuality.high,
              fit: BoxFit.cover,
            ),
            Row(
              children: [
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.yellow,
                  size: 20,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.yellow,
                  size: 20,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.yellow,
                  size: 20,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.yellow,
                  size: 20,
                ),
                Icon(
                  Icons.star_border_outlined,
                  color: Colors.yellow,
                  size: 20,
                ),
                SizedBox(
                  width: 50,
                ),
                Text(
                  'Free',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Text(
                "নামাজ ও কুরআনের\n ভাষা শিক্ষা কোর্স",
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}