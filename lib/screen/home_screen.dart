import 'package:eccomerce_test/screen/category_screen.dart';
import 'package:flutter/material.dart';

import '../widget/category_items.dart';
import '../widget/product_card.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Bar
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "data:image/jpeg;base64,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"),
                ),
                Row(
                  children: [
                    DropdownButton<String>(
                      value: "Men",
                      underline: const SizedBox(),
                      items: ["Men", "Women", "Kids"]
                          .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold),
                        ),
                      ))
                          .toList(),
                      onChanged: (value) {},
                    ),
                  ],
                ),
                const CircleAvatar(
                  radius: 20,
                  backgroundColor: Color(0xFF7C4DFF),
                  child: Icon(Icons.shopping_bag_outlined,
                      color: Colors.white),
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Search Bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(12),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.search),
                  border: InputBorder.none,
                  hintText: "Search",
                ),
              ),
            ),
            const SizedBox(height: 20),

            // Categories
            InkWell(onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CategoriesScreen()),
              );
            },child: _sectionHeader("Categories")),
            const SizedBox(height: 10),
            SizedBox(
              height: 80,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  CategoryItem("Hoodies",
                      "https://images.pexels.com/photos/3756042/pexels-photo-3756042.jpeg"),
                  CategoryItem("Shorts",
                      "https://images.unsplash.com/photo-1556905055-8f358a7a47b2"),
                  CategoryItem("Shoes",
                      "https://images.unsplash.com/photo-1542291026-7eec264c27ff"),
                  CategoryItem("Bag",
                      "https://images.pexels.com/photos/322207/pexels-photo-322207.jpeg"),
                  CategoryItem("Accessories",
                      "https://images.unsplash.com/photo-1503341455253-b2e723bb3dbb"),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Top Selling
            _sectionHeader("Top Selling"),
            const SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,

                children: const [
                  ProductCard(
                    title: "Men's Harrington Jacket",
                    price: "\$148.00",
                    imageUrl:
                    "https://images.pexels.com/photos/5325582/pexels-photo-5325582.jpeg"
                  ),
                  ProductCard(
                    title: "Nike Slides",
                    price: "\$55.00",
                    oldPrice: "\$100.97",
                    imageUrl:
                    "https://images.unsplash.com/photo-1620799140408-edc6dcb6d633",
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // New In
            _sectionHeader("New In"),
            const SizedBox(height: 10),
            SizedBox(
              height: 250,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  ProductCard(
                      title: "Men's Harrington Jacket",
                      price: "\$148.00",
                      imageUrl:
                      "https://images.pexels.com/photos/5325582/pexels-photo-5325582.jpeg"
                  ),
                  ProductCard(
                    title: "Nike Slides",
                    price: "\$55.00",
                    oldPrice: "\$100.97",
                    imageUrl:
                    "https://images.unsplash.com/photo-1620799140408-edc6dcb6d633",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _sectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        Text("See All",
            style: TextStyle(fontSize: 14, color: Colors.grey.shade600)),
      ],
    );
  }
}
