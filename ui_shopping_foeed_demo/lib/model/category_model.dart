import 'package:flutter/material.dart';

class CategoryModel {
  final String title;
  final IconData iconData;
  final bool active;

  CategoryModel({
    required this.title,
    required this.iconData,
    required this.active,
  });
}
