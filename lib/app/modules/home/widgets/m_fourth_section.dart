import 'package:deebx_gh_page/app/modules/home/controller.dart';
import 'package:deebx_gh_page/core/theme.dart/text_theme.dart';
import 'package:deebx_gh_page/core/values/consts.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';

class MFourthSectionPage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 24.0, right: 24.0, bottom: 32.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SimpleShadow(
              color: Colors.black,
              offset: const Offset(5, 5),
              sigma: 3,
              opacity: 1,
              child: Image.asset(
                '${IMAGES}statue.png',
                height: Get.height / 4.5,
              )),
          Container(
            margin: const EdgeInsets.only(top: 32.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Criar um mercado de arte focado no mercado nacional, mas aberto para o consumo externo, é uma forma de fortalecer não só a arte e cultura do Brasil, mas também captar recursos externos.',
                  style: text_cards,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Com esse intuito, nossa plataforma se tornará um acerto de Artes Digitais Nacional, possuindo assim, não só imagens, mas músicas, livros, ingressos em forma de tokens colecionáveis.',
                  style: text_cards,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                Text(
                  'Além da geração do seu NFT ser grátis, você tem a opção de adicionar uma porcentagem de royalts pela sua obra, dessa maneira mesmo em futuras transações, você será recompensado!',
                  style: text_cards,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
