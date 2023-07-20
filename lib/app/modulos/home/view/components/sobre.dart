import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio/app/helper/my_color.dart';
import 'package:portifolio/app/modulos/home/view/components/card_sobre.dart';

import '../../controller/home_controller.dart';

class Sobre extends StatefulWidget {
  const Sobre({super.key});

  @override
  State<Sobre> createState() => _SobreState();
}

class _SobreState extends State<Sobre> {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 800;
    bool isTablet = MediaQuery.of(context).size.width >= 500 &&
        MediaQuery.of(context).size.width <= 800;
    return SizedBox(
        height: 400,
        width: 800,
        child: isWeb
            ? Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 450,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Letícia Alves',
                            style: TextStyle(
                                color: MyColor.ciano,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          const Text(
                            'Graduanda em Sistemas de Informações',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.bold),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(top: 8.0, right: 20),
                            child: Text(
                                textAlign: TextAlign.justify,
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                                'Técnica em Informática formada pelo IFSP, tenho 20 anos e, atualmente, curso Sistemas de Informações pela federal de Votuporanga. Sou desenvolvedora front-end e me interesso pelas áreas web e mobile, além de ser uma entusiasta na área de DataScience e Cloud.'),
                          ),
                          const Spacer(),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 50.0),
                                child: CardSobre(
                                    caminho: 'assets/images/linkedin.png',
                                    onTap: () => controller.abrirUrl(
                                        'https://www.linkedin.com/in/leticia-deoliveira-corp/')),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50.0),
                                child: CardSobre(
                                    caminho: 'assets/images/github.png',
                                    onTap: () => controller.abrirUrl(
                                        'https://github.com/lealvesrs')),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 50.0),
                                child: CardSobre(
                                    caminho: 'assets/images/gmail.png',
                                    onTap: () => controller.abrirEmail()),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: Container(
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 300,
                                color: MyColor.ciano,
                                spreadRadius: 3)
                          ],
                        ),
                        child: const CircleAvatar(
                          radius: 100,
                          foregroundColor: MyColor.ciano,
                          backgroundImage: AssetImage(
                            'assets/images/me.jpeg',
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            : Padding(
                padding: EdgeInsets.all(isTablet ? 30 : 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 200,
                              color: MyColor.ciano,
                              spreadRadius: 3)
                        ],
                      ),
                      child: const CircleAvatar(
                        radius: 60,
                        foregroundColor: MyColor.ciano,
                        backgroundImage: AssetImage(
                          'assets/images/me.jpeg',
                        ),
                      ),
                    ),
                    const Text(
                      'Letícia Alves',
                      style: TextStyle(
                          color: MyColor.ciano,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      'Granduanda em Sistemas de Informações',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                          fontWeight: FontWeight.bold),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10.0),
                      child: Text(
                          textAlign: TextAlign.justify,
                          style: TextStyle(color: Colors.white, fontSize: 12),
                          'Técnica em Informática formada pelo IFSP, tenho 20 anos e, atualmente, curso Sistemas de Informações pela federal de Votuporanga. Sou desenvolvedora front-end e me interesso pelas áreas web e mobile, além de ser uma entusiasta na área de DataScience e Cloud.'),
                    ),
                    const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CardSobre(
                            caminho: 'assets/images/linkedin.png',
                            onTap: () => controller.abrirUrl(
                                'https://www.linkedin.com/in/leticia-deoliveira-corp/')),
                        CardSobre(
                            caminho: 'assets/images/github.png',
                            onTap: () => controller
                                .abrirUrl('https://github.com/lealvesrs')),
                        CardSobre(
                            caminho: 'assets/images/gmail.png',
                            onTap: () => controller.abrirEmail())
                      ],
                    )
                  ],
                ),
              ));
  }
}
