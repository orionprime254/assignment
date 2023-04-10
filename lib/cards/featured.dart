import 'package:flutter/material.dart';

class Featured extends StatelessWidget {
  final String foodName;
  final String foodPrice;
  final String imagePath;
  final color;
  const Featured(
      {super.key,
      required this.foodName,
      required this.foodPrice,
      required this.imagePath,
      this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: Container(
        child: Row(
          children: [
            Container(
              padding: EdgeInsets.all(1),
              decoration: BoxDecoration(
                  color: color, borderRadius: BorderRadius.circular(15)),
              height: 80,
              child: Image.asset(imagePath),
            ),
            SizedBox(
              width: 40,
            ),
            Column(
              children: [
                Text(foodName),
                SizedBox(
                  height: 10,
                ),
                Text('\$ ' + foodPrice)
              ],
            ),
          ],
        ),
      ),
    );
  }
}
