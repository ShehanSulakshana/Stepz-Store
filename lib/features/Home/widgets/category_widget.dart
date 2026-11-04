import 'package:flutter/material.dart';

class CategoryListWidget extends StatelessWidget {
  const CategoryListWidget({super.key});

  List<String> getCategories() {
    return ['All', 'Men', 'Women', 'Kids', 'Unisex'];
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50.0,
      child: ListView.builder(
        itemCount: getCategories().length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.only(right: 8.0),
            child: Chip(
              label: Text(getCategories()[index]),
              backgroundColor: index == 0
                  ? Theme.of(context).primaryColor.withAlpha(90)
                  : Theme.of(context).primaryColor.withAlpha(10),
              labelStyle: TextStyle(
                color: Theme.of(context).primaryColor,
                fontWeight: FontWeight.bold,
              ),
            ),
          );
        },
      ),
    );
  }
}
