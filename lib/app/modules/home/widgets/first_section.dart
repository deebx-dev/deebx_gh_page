import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/theme.dart/text_theme.dart';
import 'package:deebx_gh_page/core/values/colors.dart';
import 'package:deebx_gh_page/core/values/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sinusoidals/flutter_sinusoidals.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class FirstSectionPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Sinusoidal(
      reverse: true,
      model: const SinusoidalModel(
        formular: WaveFormular.travelling,
        amplitude: 3,
        waves: 1.5,
        frequency: .5,
      ),
      child: Container(
          padding: const EdgeInsets.all(24.0),
          height: Get.height / 1.3,
          width: Get.width,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('${IMAGES}bg_image_2.jpg'),
                fit: BoxFit.cover),
            color: tumbleweed,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Unindo Artes Digitais à Benefícios exclusivos!',
                style: text_header,
              ),
              Container(
                  padding: const EdgeInsets.all(24.0),
                  height: Get.height / 3,
                  decoration: BoxDecoration(
                      color: cornsilk.withOpacity(.7),
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0))),
                  margin: const EdgeInsets.only(top: 32.0),
                  width: Get.width / 2,
                  child: ListView(scrollDirection: Axis.horizontal, children: [
                    Container(
                        padding: const EdgeInsets.all(16.0),
                        height: Get.height / 5,
                        width: Get.width / 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Adquira músicas, albuns, livros e artes digitais em forma de tokens colecionáveis.',
                              textAlign: TextAlign.justify,
                              style: text_cards,
                            ),
                            SvgPicture.asset(
                              '${IMAGES}dj.svg',
                              height: Get.height / 8,
                              width: Get.height / 8,
                            ),
                          ],
                        )),
                    Container(
                        padding: const EdgeInsets.all(16.0),
                        height: Get.height / 5,
                        width: Get.width / 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Ao comprar obras dos seus artistas favoritos você recebe benefícios exclusivos.',
                              textAlign: TextAlign.justify,
                              style: text_cards,
                            ),
                            SvgPicture.asset(
                              '${IMAGES}artist.svg',
                              height: Get.height / 8,
                              width: Get.height / 8,
                            ),
                          ],
                        )),
                    Container(
                        padding: const EdgeInsets.all(16.0),
                        height: Get.height / 5,
                        width: Get.width / 7,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Crie seu NFT a partir de vários formatos de áudio, vídeo e texto.',
                              textAlign: TextAlign.justify,
                              style: text_cards,
                            ),
                            SvgPicture.asset(
                              '${IMAGES}crypto.svg',
                              height: Get.height / 8,
                              width: Get.height / 8,
                            ),
                          ],
                        ))
                  ])),
              Container()
            ],
          )),
    );
  }
}
