import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/consts.dart';
import 'package:deebx_gh_page/core/theme/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shimmer/shimmer.dart';
import 'package:simple_shadow/simple_shadow.dart';

class SecondSectionWidget extends GetView<HomeController> {
  const SecondSectionWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    '${IMAGES}bg_image.jpg',
                  ),
                  fit: BoxFit.cover)),
          padding: const EdgeInsets.all(16.0),
          height: Get.height,
          width: Get.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Expanded(
                      flex: 6,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                              'Mercado Nacional\n'
                              ' de Arte Digital',
                              textAlign: TextAlign.right,
                              style: text_header_white),
                          Text(
                              'Trazendo sentido\n'
                              'à arte digital.',
                              textAlign: TextAlign.right,
                              style: text_header2_dark),
                        ],
                      )),
                  Expanded(flex: 2, child: Container()),
                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Um Marketplace com benefícios pra você criador e pro seu público!',
                            style: text_body_white,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
         Positioned.fill(
          child: Align(
              alignment: Alignment.topCenter,
              child: Shimmer.fromColors(
                  baseColor: Colors.white,
                  highlightColor: Colors.pink,
                  child: const Icon(
                    Icons.arrow_drop_down_outlined,
                    size: 52.0,
                    color: Colors.white,
                  ))),
        ),
      ],
    );
  }
}
