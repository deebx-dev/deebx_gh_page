import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/first_section.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/fourth_section.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/m_first_section.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/m_fourth_section.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/m_second_section.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/m_thirty_section.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/second_section.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/thirty_section.dart';
import 'package:deebx_gh_page/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: cornsilk,
        body: SafeArea(
            child: ScrollConfiguration(
                behavior: const ScrollBehavior(),
                child: GlowingOverscrollIndicator(
                  axisDirection: AxisDirection.down,
                  color: middle_yellow.withOpacity(.4),
                  child: ListView(
                    children: [
                      GetPlatform.isMobile
                          ? MFirstSectionPage()
                          : FirstSectionPage(),
                      GetPlatform.isMobile
                          ? MSecondSectionPage()
                          : SecondSectionPage(),
                      GetPlatform.isMobile
                          ? MThirtySectionPage()
                          : ThirtySectionPage(),
                      GetPlatform.isMobile
                          ? MFourthSectionPage()
                          : FourthSectionPage()
                    ],
                  ),
                ))));
  }
}
