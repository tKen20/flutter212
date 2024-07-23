import 'package:demo_shopping_app_ui/data/dummy_data.dart';
import 'package:demo_shopping_app_ui/model/product.dart';
import 'package:flutter/material.dart';

class BottomShetCartWidgets extends StatefulWidget {
  const BottomShetCartWidgets({
    super.key,
  });

  @override
  State<BottomShetCartWidgets> createState() => _BottomShetCartWidgetsState();
}

class _BottomShetCartWidgetsState extends State<BottomShetCartWidgets> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      padding: EdgeInsets.all(10),
      height: 600,
      child: Column(
        children: [
          Container(
            height: 500,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // duyệt qua các ds rồi trả về hàng hóa
                  for (int i = 1; i < 8; i++)
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(1),
                                spreadRadius: 0.5,
                                blurRadius: 5),
                          ]),
                      child: Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(10),
                            child: Image.asset(
                              "assets/images/6.png",
                              width: 80,
                              height: 80,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                child: Text(
                                  "Item Title",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 24),
                                ),
                              ),
                              SizedBox(
                                height: 15,
                              ),
                              Container(
                                child: Text(
                                  "\$${20}",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 22),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
