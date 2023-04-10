import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  final String foodName;
  final String foodPrice;
  final String imagePath;
  final color;
  const FoodCard(
      {super.key,
      required this.foodName,
      required this.foodPrice,
      required this.imagePath,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        padding: EdgeInsets.all(20),
        width: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color,
        ),
        child: Column(
          children: [
            CircleAvatar(
              radius: 65,
              child: Image.asset(imagePath),
              backgroundColor: Colors.white,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              foodName,
              style: TextStyle(fontSize: 20, color: Colors.brown[700]),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              '\$ ' + foodPrice,
              style: TextStyle(fontSize: 17, color: Colors.brown[700]),
            )
          ],
        ),
      ),
    );
  }
}
