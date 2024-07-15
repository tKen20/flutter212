import 'package:flutter/material.dart';
import 'package:ui_shopping_foeed_demo/model/product_model.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({
    super.key,
    required this.food,
  });

  final ProductModel food;

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[800],
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              children: [
                // button quay lai
                Material(
                  color: Colors.green[400],
                  borderRadius: BorderRadius.circular(10),
                  child: BackButton(
                    color: Colors.white,
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),

                const Spacer(),
                const Text(
                  "Food Detail",
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const Spacer(),
                //icon left
                Material(
                  color: Colors.green[400],
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {},
                    child: Container(
                      height: 42,
                      width: 42,
                      child: const Icon(
                        Icons.favorite_border_outlined,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          //image food detail
          SizedBox(
            height: 300,
            width: double.infinity,
            child: Stack(
              children: [
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 200,
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: Colors.white,
                    ),
                  ),
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      // boxShadow: [
                      //   BoxShadow(
                      //     color: Colors.green[400],
                      //     blurRadius: 0,
                      //     offset: Offset(0, 8),
                      //   ),
                      // ],
                      borderRadius: BorderRadius.circular(250),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(250),
                      child: Image.asset(
                        widget.food.image,
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          // text
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //title food
                          Text(
                            widget.food.title,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),
                          ),
                          // $ food
                          Text(
                            '\$ ${widget.food.price.toString()}',
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.green,
                            ),
                          ),
                        ],
                      ),
                    ),

                    // for buy

                    Material(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(20),
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (quantity > 1) {
                                quantity -= 1;
                                setState(() {});
                              }
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "$quantity",
                            style: const TextStyle(color: Colors.white),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          IconButton(
                            onPressed: () {
                              quantity += 1;
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                // for ratting
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 24,
                    ),
                    Text(
                      widget.food.rate.toString(),
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.health_and_safety,
                      color: Colors.red,
                    ),
                    Text(
                      "${widget.food.kcal} kcal",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 22),
                    ),
                    const Spacer(),
                    const Icon(
                      Icons.timer,
                      color: Colors.blue,
                    ),
                    Text(
                      "${widget.food.cookingTime}",
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ],
                ),
                // des
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "About Food",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  widget.food.desc,
                  style: const TextStyle(fontSize: 21, color: Colors.black54),
                ),
                const SizedBox(
                  height: 15,
                ),
                // button
                Material(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(15),
                  child: InkWell(
                    borderRadius: BorderRadius.circular(15),
                    child: Container(
                      height: 65,
                      width: double.infinity,
                      padding: const EdgeInsets.symmetric(vertical: 21),
                      child: const Text(
                        "Add to Cart",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
