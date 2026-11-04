import 'package:flutter/material.dart';
import 'package:stepz_store/features/Home/widgets/careousel.dart';
import 'package:stepz_store/features/Home/widgets/category_widget.dart';
import 'package:stepz_store/features/Home/widgets/textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // ********* HEADER *********
            Padding(
              padding: const EdgeInsets.only(
                bottom: 8.0,
                top: 8.0,
                left: 16,
                right: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Stepz',
                    style: Theme.of(context).textTheme.headlineLarge?.copyWith(
                      fontWeight: FontWeight.w800,
                    ),
                  ),

                  SizedBox(width: 48.0),

                  Expanded(
                    child: CustomTextField(
                      textEditingController: TextEditingController(),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 24.0),

            // ********* CAROUSEL *********
            CareouselWidget(),

            // ********* CATEGORIES *********
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 24.0),

                  Text(
                    'Categories',
                    style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8.0),

                  //Category widget
                  CategoryListWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
