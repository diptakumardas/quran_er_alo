import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widget/carosoul_card.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int activeIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(left: 10.0, top: 50),
            child: Row(
              children: [
                Container(
                  height: 80,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.red,
                    image: DecorationImage(image: AssetImage("images/1.png")),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Text(
                  "Md Kmarul Hasan",
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  width: 120,
                ),
                Icon(
                  Icons.notifications_none,
                  size: 28,
                )
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          SizedBox(
            width: double.infinity,
            child: CarouselSlider.builder(
                itemCount: 5,
                itemBuilder: (context, itemIndex, pageviewIndex) {
                  return CarsoulCard();
                },
                options: CarouselOptions(
                    onPageChanged: (index, reason) {
                      setState(() {
                        activeIndex = index;
                      });
                    },
                    aspectRatio: 2.3,
                    autoPlay: true)),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 150.0),
            child: AnimatedSmoothIndicator(

              activeIndex: activeIndex, count: 5,

            ),
          ),
          SizedBox(
            height: 40,

          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text("কোরআনের আলো কোর্স সমূহ",style: TextStyle(fontSize: 16,color: Colors.black,fontWeight: FontWeight.bold),),
          ),
          Container(
            height: 150,
            color: Colors.red,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemBuilder: (context,index){
              return Stack(
                children: [
                ],

              );
            }),
          )
        ],
      ),
    );
  }
}
