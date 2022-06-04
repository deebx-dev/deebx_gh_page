import 'package:deebx_gh_page/app/modules/dashboard/controller.dart';
import 'package:deebx_gh_page/app/modules/dashboard/widgets/app_bar.dart';
import 'package:deebx_gh_page/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DashboardPage extends GetView<DashboardController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBarWidget(),
        ),
        body: Navigator(
          key: Get.nestedKey(1),
          initialRoute: Routes.HOME,
          onGenerateRoute: controller.onGenerateRoute,
        ));
  }
}
