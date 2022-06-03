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
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: Get.width / 2,
                        child: Text(
                          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
                          style: text_body_dark,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.zero,
                        child: SimpleShadow(
                          sigma: 2,
                          color: Colors.black,
                          opacity: 0.6,
                          offset: const Offset(7, 7),
                          child: Image.asset(
                            '${IMAGES}example_art.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
