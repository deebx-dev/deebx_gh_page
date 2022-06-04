import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/app/modules/home/widgets/circle_image.dart';
import 'package:deebx_gh_page/core/consts.dart';
import 'package:deebx_gh_page/core/theme/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstSectionWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('${IMAGES}bg_image_2.jpg'), fit: BoxFit.cover)),
      height: Get.height - 100.0,
      width: Get.width,
      child: FractionallySizedBox(
        heightFactor: 1,
        widthFactor: 1,
        child: Container(
          height: Get.height,
          width: Get.width,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 5,
              blurRadius: 7,
              offset: const Offset(0, 3), // changes position of shadow
            ),
          ]),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                width: Get.width / 2,
                child: Text(
                  'Mercado Nacional de Arte Digital',
                  style: text_header_dark,
                ),
              ),
              SizedBox(
                width: Get.width / 2,
                child: Text(
                  'Unindo Artes digitais à Benefícios',
                  style: text_body_dark.copyWith(fontSize: 28.0),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 32.0),
                width: Get.width,
                height: Get.height - 300,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleImageWidget(url: '${IMAGES}creator.png'),
                        Container(
                            margin: const EdgeInsets.only(top: 8.0),
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.3),
                                borderRadius: BorderRadius.circular(8.0)),
                            height: Get.width / 15,
                            width: Get.width / 5,
                            child: Center(
                              child: Text(
                                'Ao comprar as obras de seus artistas favoritos você receba benefícios por isso.',
                                style: text_body_dark.copyWith(fontSize: 16.0),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(
                      width: Get.width / 10,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleImageWidget(url: '${IMAGES}music.png'),
                        Container(
                            margin: const EdgeInsets.only(top: 8.0),
                            padding: const EdgeInsets.all(16.0),
                            decoration: BoxDecoration(
                                color: Colors.white.withOpacity(.3),
                                borderRadius: BorderRadius.circular(8.0)),
                            height: Get.width / 15,
                            width: Get.width / 5,
                            child: Center(
                              child: Text(
                                'Adquira faixas, albuns, artes digitais e livros exclusivos em forma de tokens colecionáveis.',
                                style: text_body_dark.copyWith(fontSize: 16.0),
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
