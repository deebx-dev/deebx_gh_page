import 'package:deebx_gh_page/app/modules/dashboard/binding.dart';
import 'package:deebx_gh_page/app/modules/dashboard/page.dart';
import 'package:deebx_gh_page/app/modules/home/binding.dart';
import 'package:deebx_gh_page/app/modules/home/page.dart';
import 'package:deebx_gh_page/routes/pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: DashboardPage(),
      getPages: AppPages.pages,
      // initialRoute: Routes.DASH,
      initialBinding: DashboardBinding()));
}
