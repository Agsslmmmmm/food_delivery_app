// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:trying_learning_flutter/models/food.dart';

class FoodTile extends StatelessWidget {
  final Food food;
  final Function()? onTap;
  const FoodTile({
    Key? key,
    required this.food,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                // text food details
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(food.name),
                      Text(
                        '\$' + food.price.toString(),
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        food.description,
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 15,
                ),
                // food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(18),
                  child: Image.asset(
                    food.imagePath,
                    height: 120,
                    width: 200,
                  ),
                ),
              ],
            ),
          ),
        ),

        // divider line
        Divider(
          color: Theme.of(context).colorScheme.primary,
          indent: 25,
          endIndent: 25,
        ),
      ],
    );
  }
}
