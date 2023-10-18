import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import '../common/global_colors.dart';

class CarouseClass extends StatefulWidget {
  const CarouseClass({super.key});

  @override
  State<CarouseClass> createState() => _CarouseClassState();
}

class _CarouseClassState extends State<CarouseClass> {
  List<String> ImageList = [
    "assets/images/banner/banner1.jpg",
    "assets/images/banner/banner2.png",
    "assets/images/banner/banner3.png",
  ];
  int InitialPage = 0;
  final CarouselController controller = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CarouselSlider(
            carouselController: controller,
            items: ImageList.map((ImageList) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  width: 335,
                  height: 147,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6.0),
                      image: DecorationImage(
                          image: AssetImage(ImageList), fit: BoxFit.cover)),
                );
              });
            }).toList(),
            options: CarouselOptions(
                height: 147,
                autoPlay: true,
                enlargeCenterPage: true,
                onPageChanged: (index, reason) {
                  setState(() {
                    InitialPage = index;
                  });
                }),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: ImageList.asMap().entries.map((ImageList) {
              return InkWell(
                onTap: () {
                  controller.jumpToPage(ImageList.key);
                  setState(() {});
                },
                child: Container(
                  margin: const EdgeInsets.all(8),
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                    shape: InitialPage == ImageList.key
                        ? BoxShape.circle
                        : BoxShape.circle,
                    color: InitialPage == ImageList.key
                        ? GlobalColors.ButtonNavigation
                        : Colors.grey,
                  ),
                ),
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}
