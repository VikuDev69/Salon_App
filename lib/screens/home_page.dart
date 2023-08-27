import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:salon/screens/cart_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> categories = [
    "Facial",
    "Mani & Pedi",
    "Combos",
    "Henna",
    "Application"
  ];
  final List<String> selectedCategories = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        actions: [
          IconButton(
              onPressed: () {
                Get.to(const CartPage());
              },
              icon: const Icon(
                Icons.shopping_cart_sharp,
                size: 28,
              )),
          const SizedBox(
            width: 10,
          )
        ],
        centerTitle: false,
        title: const Text(
          "Beauty Salon",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
      ),
      body: Column(
        children: [
          Container(
              margin: const EdgeInsets.all(8.0),
              width: double.infinity,
              height: 60,
              color: Colors.transparent,
              padding: const EdgeInsets.all(8.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: categories
                      .map((category) => FilterChip(
                          selected: selectedCategories.contains(category),
                          selectedColor: Colors.lightBlue.shade100,
                          labelStyle: TextStyle(
                              color: selectedCategories.isEmpty
                                  ? Colors.black
                                  : Colors.blue,
                              fontWeight: FontWeight.w700),
                          side: BorderSide(
                              color: selectedCategories.isEmpty
                                  ? Colors.black
                                  : Colors.blue,
                              width: 1),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                          label: Text(category),
                          onSelected: (bool selected) {
                            setState(() {
                              if (selected) {
                                selectedCategories.add(category);
                              } else {
                                selectedCategories.remove(category);
                              }
                            });
                          }))
                      .toList(),
                ),
              )),
          const SizedBox(height: 150),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.file_copy_sharp,
                size: 90,
                color: Colors.grey.shade400,
              ),
              Text(
                "No data found",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w800),
              ),
              Text(
                "No Data Found please try again later",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
