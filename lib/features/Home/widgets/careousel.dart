import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:stepz_store/core/theme/theme.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:stepz_store/features/Home/providers/careosel_provider.dart';

class CareouselWidget extends ConsumerStatefulWidget {
  CareouselWidget({super.key});

  @override
  ConsumerState<CareouselWidget> createState() => _CareouselWidgetState();
}

class _CareouselWidgetState extends ConsumerState<CareouselWidget> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    final List<String> imageLinks = ref.watch(careoselProvider);

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CarouselSlider(
          items: imageLinks
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
          children: imageLinks.asMap().entries.map((entry) {
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
