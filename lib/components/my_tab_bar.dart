// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:trying_learning_flutter/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({
    Key? key,
    required this.tabController,
  }) : super(key: key);

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((category) {
      return Tab(
        text: category.toString().split(".").last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TabBar(
        controller: tabController,
        tabs: _buildCategoryTabs(),
        unselectedLabelColor: Theme.of(context).colorScheme.inversePrimary,
        labelColor: Theme.of(context).colorScheme.inversePrimary,
      ),
    );
  }
}
