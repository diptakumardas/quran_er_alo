import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:quran_er_alo/network/network_managerr.dart';
import 'package:quran_er_alo/network/request_model/course_content_model.dart';
import 'package:quran_er_alo/widget/rating.dart';


class CourseCard extends StatefulWidget {
  const CourseCard({super.key});

  @override
  State<CourseCard> createState() => _CourseCardState();
}

class _CourseCardState extends State<CourseCard> {
  NetworkManager networkManager = NetworkManager();
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height*.3,
        width: MediaQuery.sizeOf(context).width,
        child: FutureBuilder<CourseContentResponse>(
            future: networkManager.courseContent(),
            builder: (BuildContext context,  snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: SpinKitCircle(
                    size: 50,
                    color: Colors.blue,
                  ),
                );
              } else if (snapshot.hasError) {
                return const Center(
                  child: Text("ERROR"),
                );
              } else {
                final List<AllCourseData>? courseData =
                    snapshot.data?.encoded?.data?.allCourseData;




                return ListView.builder(
                    itemCount: courseData!
                        .length, // Set the itemCount to the number of CourseCard widgets you want
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      final courseItem = courseData[index];
                      return Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Colors.lightBlueAccent.shade100,
                          ),
                          height: MediaQuery.sizeOf(context).height*1,
                          width: MediaQuery.sizeOf(context).width*.52,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                width: 195,
                                courseItem ?. thumbnail??"",
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
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.black),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 2,
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 5.0),
                                child: Text(
                                  courseItem?.name ?? "",
                                  style: TextStyle(fontSize: 18,),maxLines: 2,
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    });
              }
            })

        /*ListView.builder(
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
        )*/
        );
  }
}
