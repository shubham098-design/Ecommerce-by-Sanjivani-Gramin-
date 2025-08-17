import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final String imageUrl;

  const CategoryItem(this.title, this.imageUrl, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 70,
      margin: const EdgeInsets.only(right: 16),
      child: Column(
        children: [
          CircleAvatar(
            radius: 28,
            backgroundImage: NetworkImage(imageUrl),
          ),
          const SizedBox(height: 6),
          Text(title,
              style: const TextStyle(fontSize: 12),
              overflow: TextOverflow.ellipsis),
        ],
      ),
    );
  }
}
