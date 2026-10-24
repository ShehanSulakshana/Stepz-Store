import 'package:flutter/material.dart';
import 'package:stepz_store/features/Home/widgets/careousel.dart';
import 'package:stepz_store/features/Home/widgets/textfield.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // ********* HEADER *********
            Padding(
              padding: const EdgeInsets.only(bottom: 24.0, top: 32.0),
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
            

          ],
        ),
      ),
    );
  }
}
