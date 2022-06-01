import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondSectionWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('${IMAGES}bg_image_2.jpg'), fit: BoxFit.cover)),
      height: Get.height,
      width: Get.width,
      child: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: Stack(
          children: [
            Container(
              height: Get.height,
              width: Get.width,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ]),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text('s'),
                ],
              ),
            ),
            Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: Image.asset('${IMAGES}example_art.png')))
          ],
        ),
      ),
    );
  }
}
