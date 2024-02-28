import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../network/network_managerr.dart';
import '../network/request_model/carousel_content_model.dart';

class CarouselCard extends StatefulWidget {
  const CarouselCard({
    super.key,
  });

  @override
  State<CarouselCard> createState() => _CarouselCardState();
}

class _CarouselCardState extends State<CarouselCard> {
  PageController pageController = PageController();
  final ScrollController controller = ScrollController();


  NetworkManager networkManager = NetworkManager();
  int activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<ContentCarouselDataResponse>(
      future: networkManager.carouselContent(),
      builder: (BuildContext context, snapshot) {
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
          final List<AllCarouselData>? corouselData =
              snapshot.data?.encoded?.data?.allCarouselData;
          return Column(
            children: [
              CarouselSlider.builder(
                  itemCount: corouselData?.length,
                  itemBuilder: (context, itemIndex, pageviewIndex) {
                    final carouselItem = corouselData?[itemIndex];
                    return Stack(
                      children: [
                        Container(
                          width: 330,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(
                                      carouselItem?.thumbnail ?? ""),
                                  fit: BoxFit.cover)),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30.0, left: 12),
                          child: SingleChildScrollView(

                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 35,
                                  width: 180,
                                  decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(8)),
                                  child: const Center(
                                      child: Padding(
                                    padding: EdgeInsets.all(2.0),
                                    child: Text(
                                      "কুরআনের আলোতে স্বাগতম",
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500,
                                          color: Colors.white),
                                    ),
                                  )),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  carouselItem?.title ?? "",
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                                const SizedBox(
                                  height: 18,
                                ),
                                Container(
                                  height: 30,
                                  width: 90,
                                  decoration: BoxDecoration(
                                      color: Colors.transparent,
                                      borderRadius: BorderRadius.circular(5),
                                      border: Border.all(color: Colors.white)),
                                  child: const Center(
                                      child: Text(
                                    "জয়েন করুন",
                                    style: TextStyle(color: Colors.white),
                                  )),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    );

                  },
                  options: CarouselOptions(
                    autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        activeIndex = index;
                        pageController.jumpToPage(index);

                      },
                      aspectRatio: 2.3,
                      autoPlay: true)),
              const SizedBox(height: 20),

            ],
          );
        }
      },
    );
  }
}
