import 'package:flutter/material.dart';
import 'package:real_state_task/core/utils/custom_icons.dart';

class CategoryItemModel {
  String name;
  IconData icon;
  CategoryItemModel({
    required this.name,
    required this.icon,
  });
}

List<CategoryItemModel> listOfCategoryItems = [
  CategoryItemModel(
    name: 'Constructions',
    icon: CustomIcons.constructions,
  ),
  CategoryItemModel(
    name: 'Insurances',
    icon: CustomIcons.constructions,
  ),
  CategoryItemModel(
    name: 'Legal',
    icon: CustomIcons.constructions,
  ),
  CategoryItemModel(
    name: 'Buy & Sell',
    icon: CustomIcons.constructions,
  ),
  CategoryItemModel(
    name: 'Accounting Services',
    icon: CustomIcons.constructions,
  ),
];
