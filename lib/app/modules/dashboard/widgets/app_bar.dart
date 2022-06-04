import 'package:deebx_gh_page/app/modules/dashboard/controller.dart';
import 'package:deebx_gh_page/core/values/colors.dart';
import 'package:deebx_gh_page/core/values/consts.dart';
import 'package:deebx_gh_page/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';

class AppBarWidget extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: cornsilk,
      automaticallyImplyLeading: false,
      actions: [
        Container(
          padding: const EdgeInsets.only(left: 24.0, right: 24.0),
          width: Get.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SimpleShadow(
                      color: Colors.black,
                      offset: const Offset(5, 5),
                      sigma: 3,
                      opacity: 1,
                      child: Image.asset('${IMAGES}example_art.png')),
                  const Text(
                    'Mercado NFT',
                    style: TextStyle(color: tumbleweed),
                  )
                ],
              ),
              Row(children: [
                MouseRegion(
                  child: InkWell(
                    borderRadius: const BorderRadius.all(Radius.circular(4.0)),
                    onTap: () => controller.changePage(Routes.HOME),
                    hoverColor: middle_yellow.withOpacity(.2),
                    splashColor: desert_sand,
                    highlightColor: tumbleweed,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Home',
                        style: TextStyle(color: tumbleweed),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24.0,
                ),
                MouseRegion(
                  child: InkWell(
                    onTap: () => '',
                    hoverColor: middle_yellow.withOpacity(.2),
                    splashColor: desert_sand,
                    highlightColor: tumbleweed,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Quem somos',
                        style: TextStyle(color: tumbleweed),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 24.0,
                ),
                MouseRegion(
                  child: InkWell(
                    onTap: () => '',
                    hoverColor: middle_yellow.withOpacity(.2),
                    splashColor: desert_sand,
                    highlightColor: tumbleweed,
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Seja parceiro',
                        style: TextStyle(color: tumbleweed),
                      ),
                    ),
                  ),
                ),
              ]),
            ],
          ),
        )
      ],
    );
  }
}
