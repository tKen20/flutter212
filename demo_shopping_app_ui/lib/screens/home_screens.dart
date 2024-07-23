import 'package:demo_shopping_app_ui/data/dummy_data.dart';
import 'package:demo_shopping_app_ui/model/product.dart';
import 'package:demo_shopping_app_ui/widgets/bottom_shet_cart_widgets.dart';
import 'package:demo_shopping_app_ui/widgets/item_widget.dart';
import 'package:demo_shopping_app_ui/widgets/popular_widgets.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:wtf_sliding_sheet/wtf_sliding_sheet.dart';

class HomeScreens extends StatefulWidget {
  const HomeScreens({super.key});

  @override
  State<HomeScreens> createState() => _HomeScreensState();
}

class _HomeScreensState extends State<HomeScreens> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[300],
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // custom app bar
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Icon(
                      Icons.menu,
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: Colors.green[300],
                        borderRadius: BorderRadius.circular(8),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 3,
                          ),
                        ],
                      ),
                      //hien thi gio hang va so luong khi mua tren gio hang
                      child: badges.Badge(
                        position:
                            badges.BadgePosition.topEnd(top: -20, end: -12),
                        badgeContent: const Text(
                          '3',
                          style: TextStyle(color: Colors.white),
                        ),
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.red,
                          padding: EdgeInsets.all(6),
                          borderRadius: BorderRadius.circular(4),
                          elevation: 0,
                        ),
                        child: InkWell(
                          onTap: () {
                            showSlidingBottomSheet(
                              context,
                              builder: (context) {
                                return SlidingSheetDialog(
                                  elevation: 8,
                                  cornerRadius: 16,
                                  builder: (context, state) {
                                    return BottomShetCartWidgets();
                                  },
                                );
                              },
                            );
                          },
                          child: const Icon(
                            Icons.shopping_cart_outlined,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              //Welcome Text
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome",
                      style: TextStyle(
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    Text(
                      "What do you want to buy? ",
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    )
                  ],
                ),
              ),

              // Search widget
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(7),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                ),
                height: 45,
                child: const TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search...",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                  ),
                ),
              ),

              // category product
              Container(
                //padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                ),
                child: Column(
                  children: [
                    // hinh danh popular
                    PopularWidgets(),

                    // danh sach item
                    ItemWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
