import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/theme.dart/text_theme.dart';
import 'package:deebx_gh_page/core/values/colors.dart';
import 'package:deebx_gh_page/core/values/consts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_sinusoidals/flutter_sinusoidals.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';

class MThirtySectionPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Sinusoidal(
      reverse: true,
      model: const SinusoidalModel(
        formular: WaveFormular.standing,
        amplitude: 3,
        waves: 1.5,
        frequency: .5,
      ),
      child: Container(
        color: desert_sand.withOpacity(.5),
        padding: const EdgeInsets.only(left: 24.0, right: 24.0, top: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: Get.width,
              child: SizedBox(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                    SizedBox(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'Estamos entrando na Era da Integração!',
                            style: text_cards.copyWith(
                                fontWeight: FontWeight.w700),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              'O artista digital é o veículo para esse tipo de mudança cultural. Somos a primeira geração desta nova geração e com certeza seremos lembrados,',
                              textAlign: TextAlign.end,
                              style: text_cards,
                            ),
                          ),
                          Text(
                            'pois trazemos um abalo de expressão e técnica que deixa o mundo da arte muito desconfortável e assim deve ser.',
                            textAlign: TextAlign.end,
                            style: text_cards,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 8.0),
                            child: Text(
                              '- Gene Hirsch',
                              textAlign: TextAlign.end,
                              style: text_cards.copyWith(
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SimpleShadow(
                        color: Colors.black,
                        offset: const Offset(5, 5),
                        sigma: 3,
                        opacity: 1,
                        child: Image.asset(
                          '${IMAGES}art_girl.png',
                          height: Get.height / 2.8,
                        )),
                  ])),
            )
          ],
        ),
      ),
    );
  }
}
