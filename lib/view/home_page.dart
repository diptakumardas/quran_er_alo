import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quran_er_alo/network/network_managerr.dart';
import 'package:quran_er_alo/widget/rating.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../widget/bottom_navigation_bar.dart';
import '../widget/carosoul_card.dart';
import '../widget/course_card.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ScrollController controller = ScrollController();
  //NetworkManager networkManager = NetworkManager();
  int activeIndex = 0;
  int _currentIndex= 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //controller: controller,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0, top: 40),
              child: Row(
                children: [
                  Container(
                    height: 80,
                    width: 60,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.red,
                      image: DecorationImage(image: AssetImage("images/Ellipse 101.png"),filterQuality: FilterQuality.high,fit: BoxFit.contain),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  const Text(
                    "Md Kmarul Hasan",
                    style: TextStyle(fontSize: 20),
                  ),
                   SizedBox(
                    width: MediaQuery.sizeOf(context).width*.3,
                  ),
                  const Icon(
                    Icons.notifications_none,
                    size: 25,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const CarouselCard(),



            const SizedBox(
              height: 40,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "কোরআনের আলো কোর্স সমূহ",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            CourseCard(),
            const SizedBox(
              height: 12,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Text(
                "লাইভ ক্লাস",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            //////////coursecard
            CourseCard()



            /*SizedBox(
              height: 230,
              width: double.infinity,
              child: ListView.builder(
                itemCount:
                    3, // Set the itemCount to the number of CourseCard widgets you want
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
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
                          const Row(
                            children: [
                              Rating(),
                              Rating(),
                              Rating(),
                              Rating(),
                              Rating(),
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
                          const Padding(
                            padding: EdgeInsets.only(left: 5.0),
                            child: Text(
                              "নামাজ ও কুরআনের\n ভাষা শিক্ষা কোর্স",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),

            ),*/


          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          showSelectedLabels: true,
          selectedItemColor: Colors.black87,
          items: [
            BottomNavigationBarItem(
              icon: Image.asset('images/home.png'),
              label: 'হোম',
            ),
            BottomNavigationBarItem(
                icon: Image.asset('images/course.png'), label: 'কোর্স'),
            BottomNavigationBarItem(
                icon: Image.asset('images/live.png'), label: 'লাইভ'),
            BottomNavigationBarItem(
                icon: Image.asset('images/more.png'), label: 'আর'),
          ]),


    );
  }
}
