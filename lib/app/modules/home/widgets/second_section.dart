import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/consts.dart';
import 'package:deebx_gh_page/core/theme/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';

class SecondSectionWidget extends GetView<HomeController> {
  const SecondSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
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
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ]),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'saaaaaaaaaaaaaaa',
                        style: text_body_dark,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned.fill(
                child: Align(
                    alignment: Alignment.bottomLeft,
                    child: SimpleShadow(
                      sigma: 2,
                      color: Colors.black,
                      opacity: 0.6,
                      offset: const Offset(7, 7),
                      child: Image.asset('${IMAGES}example_art.png'),
                    )))
          ],
        ),
      ),
    );
  }
}
