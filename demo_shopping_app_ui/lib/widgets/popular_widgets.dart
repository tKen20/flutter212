import 'package:demo_shopping_app_ui/data/dummy_data.dart';
import 'package:flutter/material.dart';

class PopularWidgets extends StatelessWidget {
  const PopularWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Popular",
                style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              Text("See All"),
            ],
          ),
        ),
        // hien thi hinh anh popular
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (int index = 0; index < listProduct.length; index++)
                Container(
                  padding: EdgeInsets.all(8),
                  margin: EdgeInsets.all(5),
                  height: 100,
                  width: 100,
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      blurRadius: 2,
                      spreadRadius: 1,
                    ),
                  ]),
                  child: InkWell(
                      onTap: () {},
                      child: Image.asset(listProduct[index].image)),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
