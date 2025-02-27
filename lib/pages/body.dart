// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodapp/pages/product_details.dart';

class BodyPart extends StatelessWidget {
  BodyPart({super.key});
  List<String> localImgUrlList = [
    "assets/images/front_view_csepl25_cricket_jersey.png",
    "assets/images/csepl25_cricket_jersey_WITH_COLLAR.png",
    "assets/images/csepl25_cricket_jersey_WITH_COLLAR_full sleeve.png",
    "assets/images/front_view_csepl25_cricket_jersey.png",
    "assets/images/csepl25_cricket_jersey_WITH_COLLAR.png",
    "assets/images/csepl25_cricket_jersey_WITH_COLLAR_full sleeve.png",
    "assets/images/front_view_csepl25_cricket_jersey.png",
    "assets/images/csepl25_cricket_jersey_WITH_COLLAR.png",
    "assets/images/csepl25_cricket_jersey_WITH_COLLAR_full sleeve.png",
    "assets/images/front_view_csepl25_cricket_jersey.png",
    "assets/images/csepl25_cricket_jersey_WITH_COLLAR.png",
    "assets/images/csepl25_cricket_jersey_WITH_COLLAR_full sleeve.png"
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Category",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("view all")
            ],
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
              children: List.generate(
                  12,
                  (index) => Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Container(
                            width: 120,
                            height: 120,
                            color: const Color.fromARGB(255, 212, 212, 212),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(
                                  width: 80,
                                  height: 80,
                                  child: Image.asset(localImgUrlList[index]),
                                ),
                                const Text("image"),
                              ],
                            ),
                          ),
                        ),
                      ))),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular Products",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text("view all")
            ],
          ),
        ),
        // Expanded(
        //   child: GridView.builder(
        //     padding: const EdgeInsets.all(8.0),
        //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        //       crossAxisCount: 2,
        //       crossAxisSpacing: 8.0,
        //       mainAxisSpacing: 8.0,
        //       childAspectRatio: 1,
        //     ),
        //     itemCount: 2,
        //     itemBuilder: (context, index) {
        //       return Container(
        //         decoration: BoxDecoration(
        //           color: Colors.green,
        //           borderRadius: BorderRadius.circular(8.0),
        //         ),
        //         child: Column(
        //           mainAxisSize: MainAxisSize.min,
        //           children: [
        //             SizedBox(
        //               width: 150,
        //               height: 150,
        //               child: Image.asset("assets/images/CSEPL_2025.png"),
        //             ),
        //             const SizedBox(height: 5),
        //             Text("Product $index"),
        //           ],
        //         ),
        //       );
        //     },
        //   ),
        // ),
        // ...existing code...
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(8.0),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 8.0,
              mainAxisSpacing: 8.0,
              childAspectRatio: 1,
            ),
            itemCount: 12,
            itemBuilder: (context, index) {
                return InkWell(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ProductDetails(
                    imageUrl: localImgUrlList[index],
                    rating: "4.5",
                    productName: "Product $index",
                    productDescription: "Description for Product $index",
                    ),
                  ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 212, 212, 212),
                  borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Stack(
                  children: [
                    Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(localImgUrlList[index]),
                      ),
                      const SizedBox(height: 5),
                      Text("Product $index"),
                      const SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                        Icon(Icons.star,
                          color: Colors.yellow, size: 16),
                        const SizedBox(width: 4),
                        Text("4.5"),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Text("\$20.00"),
                      ],
                    ),
                    ),
                    Positioned(
                    bottom: 8,
                    right: 8,
                    child: IconButton(
                      icon: Icon(Icons.add_circle, color: Colors.white),
                      onPressed: () {
                      print("Plus button pressed for Product $index");
                      },
                    ),
                    ),
                  ],
                  ),
                ),
                );
            },
          ),
        ),
      ],
    );
  }
}
