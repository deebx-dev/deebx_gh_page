import 'package:deebx_gh_page/app/modules/home/binding.dart';
import 'package:deebx_gh_page/app/modules/home/page.dart';
import 'package:get/get.dart';
part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
        name: Routes.HOME, page: () => HomePage(), bindings: [HomeBinding()])
  ];
}
