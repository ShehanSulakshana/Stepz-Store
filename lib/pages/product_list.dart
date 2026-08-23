import 'package:flutter/material.dart';
import '../global_variables.dart';
import '../widgets/product_card.dart';
import 'product_details_page.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  final List<String> filters = ["All", "Addidas", "Nike", "Bata"];
  late String selectedFilter;

  @override
  void initState() {
    super.initState();
    selectedFilter = filters[0];
  }

  @override
  Widget build(BuildContext context) {
    const border = OutlineInputBorder(
      borderSide: BorderSide(color: Color.fromRGBO(225, 225, 225, 1)),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(50),
        bottomLeft: Radius.circular(50), 
      ),
    );

    return SafeArea(
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  "Shoes\ncollection",
                  style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: TextField(
                  style: TextTheme.of(context).bodyMedium,
                  decoration: InputDecoration(
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search_rounded),
                    border: border,
                    enabledBorder: border,
                    focusedBorder: border,
                    contentPadding: const EdgeInsets.symmetric(
                      vertical: 14,
                      horizontal: 10,
                    ),
                  ),
                ),
              ),
            ],
          ),

          SizedBox(
            height: 100,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filters.length,
              itemBuilder: (BuildContext context, int index) {
                final filter = filters[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedFilter = filter;
                      });
                    },
                    child: Chip(
                      backgroundColor: selectedFilter == filter
                          ? Theme.of(context).colorScheme.primary
                          : Color.fromRGBO(235, 235, 235, 1),

                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 13,
                      ),
                      label: Text(filter),
                      side: BorderSide(color: Color.fromRGBO(235, 235, 235, 1)),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusGeometry.circular(50),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),

          Expanded(
            child: LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                if (constraints.maxWidth > 650) {
                  return GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 1.3,
                        ),
                    itemCount: products.length,
                    itemBuilder: (BuildContext context, int index) {
                      final product = products[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return ProductDetailsPage(product: product);
                              },
                            ),
                          );
                        },

                        child:
                            selectedFilter == product['company'] ||
                                selectedFilter == "All"
                            ? ProductCard(
                                title: product['title'] as String,
                                price: product['price'] as double,
                                imagePath: product['imageUrl'] as String,
                                backgroundColor: index.isEven
                                    ? Color.fromRGBO(226, 226, 226, 1)
                                    : Color.fromRGBO(240, 240, 240, 1),
                              )
                            : null,
                      );
                    },
                  );
                } else {
                  return ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      final product = products[index];

                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return ProductDetailsPage(product: product);
                              },
                            ),
                          );
                        },

                        child:
                            selectedFilter == product['company'] ||
                                selectedFilter == "All"
                            ? ProductCard(
                                title: product['title'] as String,
                                price: product['price'] as double,
                                imagePath: product['imageUrl'] as String,
                                backgroundColor: index.isEven
                                    ? Color.fromRGBO(226, 226, 226, 1)
                                    : Color.fromRGBO(240, 240, 240, 1),
                              )
                            : SizedBox.shrink(),
                      );
                    },
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
