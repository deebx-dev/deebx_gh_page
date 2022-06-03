import 'package:deebx_gh_page/app/modules/home/repository.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/first_section.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/footer.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/second_section.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final HomeRepository repository;
  HomeController(this.repository);
  final pages = [
    FirstSectionWidget(),
    const SecondSectionWidget(),
    FooterWidget()
  ];
}
