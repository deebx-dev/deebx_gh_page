import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SecondSectionWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Column(
        children: [
          Text('s'),
        ],
      ),
    );
  }
}
