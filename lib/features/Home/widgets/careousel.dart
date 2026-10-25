import 'package:flutter/material.dart';
import 'package:stepz_store/core/theme/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CareouselWidget extends StatefulWidget {
  const CareouselWidget({super.key});

  @override
  State<CareouselWidget> createState() => _CareouselWidgetState();
}

class _CareouselWidgetState extends State<CareouselWidget> {
  List<String> imageUrls = [
    'https://raw.githubusercontent.com/ShehanSulakshana/ShehanSulakshana/refs/heads/main/ProjectAssets/Stepz-Store-Repo-Banner.jpg',
    'https://raw.githubusercontent.com/ShehanSulakshana/ShehanSulakshana/refs/heads/main/ProjectAssets/Stepz-Store-Repo-Banner.jpg',
    'https://raw.githubusercontent.com/ShehanSulakshana/ShehanSulakshana/refs/heads/main/ProjectAssets/Stepz-Store-Repo-Banner.jpg',
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          items: imageUrls
              .map(
                (item) => Container(
                  margin: EdgeInsets.all(8.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    image: DecorationImage(
                      image: NetworkImage(item),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )
              .toList(),

          options: CarouselOptions(
            height: 200.0,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            enlargeCenterPage: true,
            aspectRatio: 4 / 1,
            autoPlayCurve: Curves.fastOutSlowIn,
            enableInfiniteScroll: true,
            autoPlayAnimationDuration: Duration(milliseconds: 800),
            viewportFraction: 0.8,
          ),
        ),
        SizedBox(height: 8.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imageUrls.asMap().entries.map((entry) {
            return GestureDetector(
              onTap: () => setState(() {
                currentIndex = entry.key;
              }),
              child: Container(
                width: 10.0,
                height: 10.0,
                margin: EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: currentIndex == entry.key
                      ? AppTheme.primaryColor
                      : Colors.grey,
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }
}
