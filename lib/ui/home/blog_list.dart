import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BlogList extends StatelessWidget {
  final List<Map<String, dynamic>> blogs = [
    {'title': 'How to Find Love', 'views': 3377, 'image': 'assets/images/splash_icon.jpg'},
    {'title': 'Astrology in Daily Life', 'views': 2981, 'image': 'assets/images/splash_icon.jpg'},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: blogs.map((blog) {
        return Card(
          child: ListTile(
            leading: Image.asset(blog['image'], width: 50, height: 50, fit: BoxFit.cover),
            title: Text(blog['title']),
            subtitle: Text('${blog['views']} views'),
          ),
        );
      }).toList(),
    );
  }
}