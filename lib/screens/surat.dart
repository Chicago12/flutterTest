// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyImageScreen extends StatelessWidget {
  final List<String> imageUrls;

  MyImageScreen({required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    final currentIndex = 0.obs;

    void goToPreviousImage() {
      if (currentIndex.value > 0) {
        currentIndex.value--;
      }
    }

    void goToNextImage() {
      if (currentIndex.value < imageUrls.length - 1) {
        currentIndex.value++;
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('My Image Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() => Image(
                  image: NetworkImage(imageUrls[currentIndex.value]),
                )),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RaisedButton(
                  onPressed: goToPreviousImage,
                  child: Text('Назад'),
                ),
                SizedBox(width: 10),
                RaisedButton(
                  onPressed: goToNextImage,
                  child: Text('Далее'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}