import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/utils/functions/app_bar_size.dart';
import 'package:deebx_gh_page/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: cornsilk,
        body: SafeArea(
            child: ListView(
          children: [
            Container(
                padding: const EdgeInsets.all(24.0),
                height: Get.height - getAppBarSize() * 5,
                width: Get.width,
                decoration: const BoxDecoration(
                    color: tumbleweed,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(32.0),
                       )),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Unindo as Artes Digitais à Benefícios exclusivos!',
                      style: TextStyle(color: cornsilk, fontSize: 32.0),
                    ),
                  ],
                )),
          ],
        )));
  }
}
