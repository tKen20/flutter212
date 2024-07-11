import 'package:flutter/material.dart';

class TopHeader extends StatefulWidget {
  const TopHeader({super.key});

  @override
  State<TopHeader> createState() => _TopHeaderState();
}

class _TopHeaderState extends State<TopHeader> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // hien thi icon menu
        Material(
          color: Colors.black12,
          child: InkWell(
            onTap: () {},
            child: Container(
              width: 40,
              height: 40,
              alignment: Alignment.center,
              child: const Icon(
                Icons.menu_open_outlined,
              ),
            ),
          ),
        ),
        const Spacer(),
        // hien thi vi tri
        const Icon(
          Icons.location_on_outlined,
          color: Colors.black,
        ),
        const Text(
          "HN",
          style: TextStyle(color: Colors.black, fontSize: 18),
        ),
        const Spacer(),
        Material(
          color: Colors.black12,
          child: Container(
            width: 30,
            height: 30,
            child: InkWell(
              onTap: () {},
              child: Image.asset(
                "assets/images/User-Profile-PNG-Free-Download.png",
                width: 30,
                height: 30,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
