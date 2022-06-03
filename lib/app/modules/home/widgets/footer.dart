import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/consts.dart';
import 'package:deebx_gh_page/core/theme/text/text_theme.dart';
import 'package:deebx_gh_page/core/utils/functions/launch_url.dart';
import 'package:deebx_gh_page/core/values/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class FooterWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 16.0, right: 16.0, top: 2.0),
      height: 100.0,
      width: Get.width,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
              children: [
                GestureDetector(
                  onTap: () => openUrl(
                    'https://www.instagram.com/deebx.br/',
                  ),
                  child: SizedBox(
                      height: 32.0,
                      width: 32.0,
                      child: Image.asset('${ICONS}instagram.png')),
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
                        child: Image.asset('${ICONS}linkedin.png')))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
