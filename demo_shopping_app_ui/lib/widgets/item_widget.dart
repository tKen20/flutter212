import 'package:demo_shopping_app_ui/data/dummy_data.dart';
import 'package:demo_shopping_app_ui/model/product.dart';
import 'package:demo_shopping_app_ui/screens/item_detail_screens.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Top",
              style: TextStyle(
                  fontSize: 36,
                  fontWeight: FontWeight.bold,
                  color: Colors.green),
            ),
            Text("See All"),
          ]),
        ),
        // hien thi item dang luoi
        GridView.count(
          padding: const EdgeInsets.all(10),
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          childAspectRatio: 0.8,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          shrinkWrap: true,
          children: [
            for (int index = 0; index < listProduct.length; index++)
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        blurRadius: 2,
                        spreadRadius: 1,
                      ),
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    // hien thi hinh anh trai cay
                    InkWell(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) {
                            Product items = listProduct[index];
                            return ItemDetailScreens(food: items);
                          },
                        ));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Image.asset(
                          listProduct[index].image,
                          height: 100,
                          width: 110,
                        ),
                      ),
                    ),

                    // hien thi text
                    Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 5),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: Text(
                          listProduct[index].title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 23,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),

                    // hien thi text

                    Padding(
                      padding: const EdgeInsets.only(left: 5, bottom: 5),
                      child: Container(
                        alignment: Alignment.topLeft,
                        child: const Text(
                          "Fresh Fruit 2KG",
                          style: TextStyle(
                            fontSize: 16,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                    // hien thi so tien va nut mua
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 5, bottom: 5),
                            child: Container(
                              alignment: Alignment.topLeft,
                              child: Text(
                                listProduct[index].price.toString(),
                                style: const TextStyle(
                                  color: Colors.green,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),

                          // hien thi nut mua
                          InkWell(
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.all(6),
                              decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15)),
                              child: const Icon(
                                Icons.add_shopping_cart,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
          ],
        )
      ],
    );
  }
}
