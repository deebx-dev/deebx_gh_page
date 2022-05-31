import 'package:deebx_gh_page/app/modules/home/binding.dart';
import 'package:deebx_gh_page/app/modules/home/page.dart';
import 'package:deebx_gh_page/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: Routes.HOME,
    // theme: appThemeData,
    defaultTransition: Transition.fade,
    initialBinding: HomeBinding(),
    getPages: AppPages.pages,
    home: HomePage(),
  ));
}
