import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/theme/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstSectionWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Get.height,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                      'Mercado Nacional\n'
                      ' de Arte Digital',
                      textAlign: TextAlign.right,
                      style: text_header_white),
                ],
              )),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [Text('Uma iniciativa')],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
