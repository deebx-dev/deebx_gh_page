import 'dart:ui';

import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/first_section.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/second_section.dart';
import 'package:deebx_gh_page/core/consts.dart';
import 'package:deebx_gh_page/core/theme/text/text_theme.dart';
import 'package:deebx_gh_page/core/utils/functions/launch_url.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
            appBar: AppBar(
                backgroundColor: Colors.white.withOpacity(.6),
                automaticallyImplyLeading: false,
                actions: [
                  Container(
                    padding: const EdgeInsets.only(left: 16.0, right: 16.0),
                    width: Get.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        SimpleShadow(
                          sigma: 2,
                          color: Colors.black,
                          opacity: 0.6,
                          offset: const Offset(7, 7),
                          child: Image.asset(
                            '${IMAGES}example_art.png',
                            fit: BoxFit.contain,
                          ),
                        ),
                        Text(
                          'Mercado NFT',
                          style: text_header2_dark,
                        ),
                        Expanded(
                            flex: 10,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                TextButton(
                                  onPressed: () => '',
                                  style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.grey.withOpacity(.3))),
                                  child: Text(
                                    'Quem somos',
                                    style: text_link,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () => '',
                                  style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.grey.withOpacity(.3))),
                                  child: Text(
                                    'Contato',
                                    style: text_link,
                                  ),
                                ),
                                TextButton(
                                  onPressed: () => '',
                                  style: ButtonStyle(
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.grey.withOpacity(.3))),
                                  child: Text(
                                    'Seja parceiro',
                                    style: text_link,
                                  ),
                                ),
                              ],
                            )),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              GestureDetector(
                                onTap: () => openUrl(
                                  'https://www.instagram.com/deebx.br/',
                                ),
                                child: SizedBox(
                                    height: 32.0,
                                    width: 32.0,
                                    child:
                                        Image.asset('${ICONS}instagram.png')),
                              ),
                              Container(
                                width: 32.0,
                              ),
                              GestureDetector(
                                  onTap: () => openUrl(
                                        'https://www.linkedin.com/company/deebx',
                                      ),
                                  child: SizedBox(
                                      height: 32.0,
                                      width: 32.0,
                                      child:
                                          Image.asset('${ICONS}linkedin.png')))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]),
            backgroundColor: Colors.transparent,
            body: FractionallySizedBox(
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
                ))),
      ],
    );
  }
}
