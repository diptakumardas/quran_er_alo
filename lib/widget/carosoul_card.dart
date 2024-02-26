import 'package:flutter/material.dart';
class CarouselCard extends StatefulWidget {
  const CarouselCard({super.key});

  @override
  State<CarouselCard> createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: 320,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("images/q1.jpg"),
                  fit: BoxFit.cover)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 30.0, left: 12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Text(
                        "কুরআনের আলোতে স্বাগতম",
                        style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      ),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "কোরআন চর্চার প্লাটফর্ম",
                style:
                TextStyle(color: Colors.white, fontSize: 13),
              ),
              SizedBox(
                height: 18,
              ),
              Container(
                height: 30,
                width: 90,
                decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(5),
                    border: Border.all(color: Colors.white)),
                child: Center(
                    child: Text(
                      "জয়েন করুন",
                      style: TextStyle(color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
