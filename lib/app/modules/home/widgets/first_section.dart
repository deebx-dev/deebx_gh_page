import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/theme/text/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FirstSectionWidget extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      height: Get.height - 8.0,
      width: Get.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                  flex: 6,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                          'Mercado Nacional\n'
                          ' de Arte Digital',
                          textAlign: TextAlign.right,
                          style: text_header_white),
                      Text('Trazendo sentido a arte.',
                          textAlign: TextAlign.right, style: text_header2_dark),
                    ],
                  )),
              Expanded(
                flex: 4,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      'A arte é uma forma de expressar o que cada um sente no íntimo, ela é uma maneira de traduzir as experiências de vida das pessoas, além de funcionar como veículo de informação. Assim a arte, principalmente no âmbito digital/virtual, pode ser considerada uma ferramenta de troca de conhecimento e aproximação entre pessoas mesmo que elas estejam geograficamente distantes.',
                      style: text_body_white,
                    )
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
