import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/controller.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MyController controller = Get.put(MyController());
    return Scaffold(
      backgroundColor: const Color.fromARGB(233, 255, 255, 255),
      appBar: AppBar(
        title: const Text("Cart"),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      body: SafeArea(
          child: Column(
        children: [
          Card(
            color: Colors.white,
            margin:
                const EdgeInsets.only(top: 10, left: 15, bottom: 10, right: 15),
            shadowColor: Colors.grey,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 2,
            child: Container(
              width: double.infinity,
              height: 175,
              padding: const EdgeInsets.all(8),
              child: Row(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 130,
                      height: 140,
                      decoration: const ShapeDecoration(shape: CircleBorder()),
                      child: const Image(
                          fit: BoxFit.fill,
                          image: NetworkImage(
                              "https://jawedhabiblucknow.com/images/warptheme/haircut/best-hair-cutting-salon-in-lucknow.jpg")),
                    )
                  ],
                ),
                SizedBox(
                  width: 212,
                  child: Column(
                    children: [
                      const SizedBox(height: 15),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          const SizedBox(width: 30),
                          SizedBox(
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 30,
                              ),
                            ),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Hair Cut",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                      const Row(
                        children: [
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "French",
                            style: TextStyle(
                                fontSize: 11,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey),
                          )
                        ],
                      ),
                      Row(
                        children: [
                          const SizedBox(
                            width: 10,
                          ),
                          const Text(
                            "999",
                            style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          const SizedBox(width: 5),
                          const Text(
                            "Rs.2500",
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.black),
                          ),
                          const SizedBox(width: 3),
                          RawMaterialButton(
                            constraints: const BoxConstraints(
                                minWidth: 30, minHeight: 30),
                            onPressed: () {
                              controller.decrement();
                            },
                            shape: const CircleBorder(),
                            fillColor: Colors.white,
                            child: const Text(
                              '-',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                          SizedBox(
                            height: 25,
                            child: Obx(
                              () => Text(
                                "${controller.count.value}",
                                style: TextStyle(fontSize: 18),
                              ),
                            ),
                          ),
                          RawMaterialButton(
                            constraints: const BoxConstraints(
                                minWidth: 30, minHeight: 30),
                            onPressed: () {
                              controller.increment();
                            },
                            shape: const CircleBorder(),
                            fillColor: Colors.white,
                            child: const Text(
                              '+',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          const SizedBox(height: 40),
          MaterialButton(
            onPressed: () {},
            elevation: 0,
            minWidth: 340,
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            color: Colors.amber.shade400,
            textColor: Colors.white,
            child: const Text(
              "Continue",
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
          )
        ],
      )),
    );
  }
}
