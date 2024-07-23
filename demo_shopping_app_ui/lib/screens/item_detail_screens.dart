import 'package:demo_shopping_app_ui/model/product.dart';
import 'package:flutter/material.dart';

class ItemDetailScreens extends StatefulWidget {
  const ItemDetailScreens({super.key, required this.food});

  final Product food;

  @override
  State<ItemDetailScreens> createState() => _ItemDetailScreensState();
}

class _ItemDetailScreensState extends State<ItemDetailScreens> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            //hien thi hinh anh san pham
            Container(
              height: 350,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.food.image),
                ),
              ),
              //hien thi nut goc top left
              alignment: Alignment.topLeft,
              // hien thi nut quay lai
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                },
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(
                    Icons.arrow_back,
                    color: Colors.green,
                  ),
                ),
              ),
            ),

            // hien thi chi tiet
            const SizedBox(
              height: 10,
            ),
            Container(
              padding: const EdgeInsets.all(10),
              height: 400,
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  )),
              child: Column(
                children: [
                  //hien thi ten va so luong mua
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //hien thi ten
                      Text(
                        widget.food.title,
                        style: const TextStyle(
                          fontSize: 26,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      //hien thi so luong
                      Row(
                        children: [
                          IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              if (quantity > 1) {
                                quantity -= 1;
                                setState(() {});
                              }
                            },
                            icon: const Icon(
                              Icons.remove,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "$quantity",
                            style: const TextStyle(
                                color: Colors.black, fontSize: 20),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          IconButton(
                            style: IconButton.styleFrom(
                              backgroundColor: Colors.white,
                            ),
                            onPressed: () {
                              quantity += 1;
                              setState(() {});
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),

                  // hien thi rate
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 26,
                      ),
                      Text(
                        widget.food.rate.toString(),
                        style: const TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),

                  // hien thi desc
                  Container(
                    alignment: Alignment.topLeft,
                    child: const Text(
                      "Description:",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 26,
                          color: Colors.white),
                    ),
                  ),

                  Container(
                    alignment: Alignment.topLeft,
                    child: Text(
                      widget.food.desc,
                      style: const TextStyle(fontSize: 22, color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
