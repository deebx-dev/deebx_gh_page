import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FractionallySizedBox(
            heightFactor: 1,
            widthFactor: 1,
            child: Image.asset(
              '${IMAGES}bg_image.jpg',
              fit: BoxFit.cover,
            )),
        const Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(child: Text('HomeController'))),
      ],
    );
  }
}
