import 'package:flutter/material.dart';
import 'package:ui_shopping_foeed_demo/data/dummy_data_product.dart';
import 'package:ui_shopping_foeed_demo/model/product_model.dart';
import 'package:ui_shopping_foeed_demo/screens/product_detail.dart';

class GridViewProduct extends StatefulWidget {
  const GridViewProduct({super.key});

  @override
  State<GridViewProduct> createState() => _GridViewProductState();
}

class _GridViewProductState extends State<GridViewProduct> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          mainAxisExtent: 268,
        ),
        itemCount: productData.length,
        itemBuilder: (context, index) {
          //
          ProductModel food = productData[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => ProductDetail(
                  food: food,
                ),
              ));
            },
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              height: 265,
              decoration: BoxDecoration(
                color: Colors.green[100],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Stack(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(120),
                          child: Image.asset(
                            productData[index].image,
                            width: 140,
                            height: 140,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Text(
                        productData[index].title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      Row(
                        children: [
                          Text(productData[index].cookingTime),
                          const Spacer(),
                          const Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Text('${productData[index].rate}'),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            '\$ ${productData[index].price}',
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                              style: IconButton.styleFrom(
                                  backgroundColor: Colors.greenAccent[700]),
                              onPressed: () {
                                // Navigator.of(context)
                                //     .pushReplacement(MaterialPageRoute(
                                //   builder: (context) => ProductDetail(),
                                // ));
                              },
                              icon: const Icon(Icons.add)),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
