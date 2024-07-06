import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UiProfile extends StatefulWidget {
  const UiProfile({super.key});

  @override
  State<UiProfile> createState() => _UiProfileState();
}

class _UiProfileState extends State<UiProfile> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ui Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Image.network(
                  "https://thumbs.dreamstime.com/b/incredibly-beautiful-sunset-sun-lake-sunrise-landscape-panorama-nature-sky-amazing-colorful-clouds-fantasy-design-115177001.jpg",
                  fit: BoxFit.cover,
                  height: height / 2.5,
                ),
                const Positioned(
                  bottom: -60,
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                        "https://www.w3schools.com/w3images/avatar6.png"),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 60,
            ),
            const Column(
              children: [
                Text(
                  "Name: DEMO",
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Android Develope",
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: const CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 25,
                      child: Icon(
                        FontAwesomeIcons.facebook,
                        color: Colors.blue,
                        size: 50.0,
                      ),
                    ),
                  ),
                  IconButton(
                      onPressed: () {},
                      icon: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Icon(
                          FontAwesomeIcons.youtube,
                          color: Colors.red,
                          size: 50.0,
                        ),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Icon(
                          FontAwesomeIcons.github,
                          color: Colors.black,
                          size: 50.0,
                        ),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Icon(
                          FontAwesomeIcons.instagram,
                          color: Colors.amber,
                          size: 50.0,
                        ),
                      )),
                  IconButton(
                      onPressed: () {},
                      icon: const CircleAvatar(
                        backgroundColor: Colors.white,
                        radius: 25,
                        child: Icon(
                          FontAwesomeIcons.linkedin,
                          color: Colors.blue,
                          size: 50.0,
                        ),
                      )),
                ],
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "About",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "As a Flutter developer, I thrive at crafting elegant and efficient cross-platform applications. My code is a fusion of creativity and precision, resulting in seamless user experiences. With a solid foundation in Dart programming and a knack for UI/UX design, I specialize in building dynamic, responsive, and visually appealing apps. My commitment to continuous learning and staying updated with the latest Flutter trends enables me to deliver top-notch solutions that meet user needs and exceed expectations. Let's turn ideas into innovative realities together.",
                style: TextStyle(fontSize: 17),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
