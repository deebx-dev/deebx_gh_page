import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/theme.dart/text_theme.dart';
import 'package:deebx_gh_page/core/values/colors.dart';
import 'package:deebx_gh_page/core/values/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';

class MSecondSectionPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
          left: 24.0, right: 24.0, bottom: 24.0, top: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SimpleShadow(
              color: Colors.black,
              offset: const Offset(5, 5),
              sigma: 4,
              opacity: 1,
              child: Image.asset(
                '${IMAGES}example_art.png',
                height: Get.height / 3.5,
              )),
          SizedBox(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                    text: TextSpan(style: text_cards, children: [
                  const TextSpan(text: 'A '),
                  TextSpan(
                    text: 'deebX ',
                    style: text_cards.copyWith(color: tumbleweed),
                  ),
                  const TextSpan(
                      text:
                          'surge com a missão de estimular e aquecer o mercado da arte no Brasil.')
                ])),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Sabemos que valorizar e incentivar nossos artistas é, também, um incentivo a cultura.',
                  style: text_cards,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Por isso resolvemos unir a classe da arte com a modernidade da blockchain, para trazer vantagens, tanto para o público consumidor quanto para os criadores digitais.',
                  style: text_cards,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
