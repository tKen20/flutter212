import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:flutter/material.dart';

import 'dart:async';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final ImagePicker picker = ImagePicker();
  File? _image;

  // chuc nang hien thi khi click vao them thay avata
  void showSelectImage(BuildContext context) {
    showModalBottomSheet(
      // backgroundColor: Colors.white,
      context: context,
      builder: (context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height / 8.5,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                onTap: () {
                  _pickImageFromGallery();
                },
                child: const SizedBox(
                  child: Column(
                    children: [
                      Icon(
                        Icons.image,
                        size: 70,
                      ),
                      Text("Gallery"),
                    ],
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                  _pickImageFromPhoto();
                },
                child: const SizedBox(
                  child: Column(
                    children: [
                      Icon(
                        Icons.camera_alt_sharp,
                        size: 70,
                      ),
                      Text("Camera"),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  //Gallery
  Future _pickImageFromGallery() async {
    final XFile? imageGallery =
        await picker.pickImage(source: ImageSource.gallery);

    setState(() {
      if (imageGallery != null) {
        _image = File(imageGallery.path);
      } else {
        print("No image");
      }
    });
    Navigator.of(context).pop();
  }

  //Photo
  Future _pickImageFromPhoto() async {
    final XFile? imagePhoto =
        await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (imagePhoto != null) {
        _image = File(imagePhoto.path);
      } else {
        print("No Photo");
      }
    });
    Navigator.of(context).pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: SafeArea(
        child: Center(
          child: Stack(
            // clipBehavior: Clip.none,
            children: [
              _image != null
                  ? CircleAvatar(
                      radius: 160,
                      backgroundImage: MemoryImage(_image as Uint8List),
                    )
                  : const CircleAvatar(
                      radius: 160,
                      backgroundImage: NetworkImage(
                          "https://img.freepik.com/free-vector/blue-circle-with-white-user_78370-4707.jpg?w=740&t=st=1720375061~exp=1720375661~hmac=3b65c7b25c0cd489c18632a3a4dfa84cb4367ecdefc9da2dc098eb61178a75c2"),
                    ),
              Positioned(
                left: 200,
                bottom: 20,
                child: IconButton(
                  onPressed: () {
                    showSelectImage(context);
                  },
                  icon: const Icon(
                    Icons.add_a_photo,
                    size: 35,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
