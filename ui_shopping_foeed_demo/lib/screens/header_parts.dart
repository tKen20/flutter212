import 'package:flutter/material.dart';
import 'package:ui_shopping_foeed_demo/data/dummy_data_category.dart';
import 'package:ui_shopping_foeed_demo/widgets/product.dart';
import 'package:ui_shopping_foeed_demo/widgets/top_header.dart';

class HeaderParts extends StatefulWidget {
  const HeaderParts({super.key});

  @override
  State<HeaderParts> createState() => _HeaderPartsState();
}

class _HeaderPartsState extends State<HeaderParts> {
  int indexCategory = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Top header
          const TopHeader(),
          const Text(
            "Hi Adimn",
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Text(
            "Find Your Food",
            style: TextStyle(
              fontSize: 34,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Tim kiem food
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            decoration: BoxDecoration(
              color: Colors.green[300],
              borderRadius: BorderRadius.circular(15),
            ),
            height: 55,
            child: Row(
              children: [
                const Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      prefixIcon: Icon(Icons.search),
                      hintText: "Search Food",
                      hintStyle: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                Material(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    child: Container(
                      height: 55,
                      width: 55,
                      child: const Icon(
                        Icons.emoji_emotions,
                        size: 40,
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
              ],
            ),
          ),

          // list category food
          SizedBox(
            height: 35,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categoryData.length,
              itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  setState(() {
                    indexCategory = index;
                  });
                },
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  margin: const EdgeInsets.only(right: 5),
                  width: 100,
                  decoration: BoxDecoration(
                    color: indexCategory == categoryData[index].active
                        ? Colors.green[200]
                        : Colors.white,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(
                        categoryData[index].iconData,
                        color: indexCategory == categoryData[index].active
                            ? Colors.white
                            : Colors.black,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        child: Text(
                          categoryData[index].title,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                          style: TextStyle(
                              fontSize: 18,
                              color: indexCategory == categoryData[index].active
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          // Grid View List Product
          GridViewProduct(),
        ],
      ),
    );
  }
}
