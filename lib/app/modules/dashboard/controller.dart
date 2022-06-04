import 'package:deebx_gh_page/app/modules/home/binding.dart';
import 'package:deebx_gh_page/app/modules/home/page.dart';
import 'package:deebx_gh_page/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardController extends GetxController {
  final index = 0.obs;
  final pages = <String>[
    Routes.HOME,
    Routes.QUEM_SOMOS,
    Routes.SEJA_PARCEIRO,
  ];
  currentRoute(r) => Get.currentRoute == r ? true : false;
  changePage(route) {
    route != Get.currentRoute ? Get.offAllNamed(route, id: 1) : null;
    index.value = pages.indexOf(route);
  }

  Route? onGenerateRoute(RouteSettings settings) {
    if (settings.name == Routes.HOME) {
      return GetPageRoute(
          settings: settings, page: () => HomePage(), binding: HomeBinding());
    }

    return null;
  }
}
