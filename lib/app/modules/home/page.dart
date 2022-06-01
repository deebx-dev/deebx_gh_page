import 'dart:ui';

import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/first_section.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/second_section.dart';
import 'package:deebx_gh_page/core/consts.dart';
import 'package:deebx_gh_page/core/theme/text/text_theme.dart';
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
        Scaffold(
            backgroundColor: Colors.transparent,
            body: SafeArea(
                child: FractionallySizedBox(
                    heightFactor: 1,
                    widthFactor: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child:
                              //  Stack(
                              //   children: [
                              ListView.builder(
                            itemCount: controller.pages.length,
                            itemBuilder: (__, _) => controller.pages[_],
                          ),
                          //     Positioned.fill(
                          //         child: Align(
                          //             alignment: Alignment.bottomCenter,
                          //             child: Container(
                          //               height: 40.0,
                          //               width: 40.0,
                          //               child: IconButton(
                          //                   icon: Icon(
                          //                     Icons
                          //                         .keyboard_double_arrow_down_outlined,
                          //                     color: Colors.white,
                          //                   ),
                          //                   onPressed: () =>
                          //                       controller.rollingPage()),
                          //               decoration: const BoxDecoration(
                          //                   shape: BoxShape.circle),
                          //             ))),
                          //   ],
                          // ),
                        )
                      ],
                    )))),
      ],
    );
  }
}
