import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CircleImageWidget extends Container {
  final String? url;

  CircleImageWidget({Key? key, this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16.0, right: 24.0),
        decoration: BoxDecoration(
            shape: BoxShape.circle, color: Colors.white.withOpacity(.3)),
        child: SizedBox(
          width: Get.width / 10,
          height: Get.width / 10,
          child: Image.asset(
            url!,
            fit: BoxFit.contain,
          ),
        ));
  }
}
