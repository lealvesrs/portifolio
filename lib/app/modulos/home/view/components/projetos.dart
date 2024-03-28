import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio/app/modulos/home/view/components/container_projeto.dart';

import '../../controller/home_controller.dart';

class Projetos extends StatefulWidget {
  const Projetos({super.key});

  @override
  State<Projetos> createState() => _ProjetosState();
}

class _ProjetosState extends State<Projetos> {
  bool frizz = false;
  bool treino = false;
  bool landing = false;
  final controller = Get.put(HomeController());

  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 800;
    return SizedBox(
        height: 400,
        width: 800,
        child: isWeb
            ? SingleChildScrollView(
                child: Wrap(
                  alignment: WrapAlignment.center,
                  spacing: 30,
                  runSpacing: 30,
                  children: [
                    GestureDetector(
                      onTap: () => controller.abrirUrl(
                          'https://github.com/lealvesrs/frizz-humidity'),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        child: MouseRegion(
                            cursor: MaterialStateMouseCursor.clickable,
                            onEnter: (val) {
                              setState(() {
                                frizz = true;
                              });
                            },
                            onExit: (val) {
                              setState(() {
                                frizz = false;
                              });
                            },
                            child: ContainerProjeto(
                                control: frizz,
                                img: 'assets/gifs/frizz.gif',
                                title: 'Vai ter frizz?',
                                desc:
                                    'Sistema web que verifica, a partir da umidade do ar, se há indicações para frizz capilar',
                                stacks: const [
                                  'HTML & CSS',
                                  'JQuery',
                                  'OpenWeather API'
                                ],
                                height: 400,
                                width: 350)),
                      ),
                    ),
                    GestureDetector(
                      onTap: () => controller.abrirUrl(
                          'https://github.com/lealvesrs/scss_landing_page'),
                      child: AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        child: MouseRegion(
                            cursor: MaterialStateMouseCursor.clickable,
                            onEnter: (val) {
                              setState(() {
                                landing = true;
                              });
                            },
                            onExit: (val) {
                              setState(() {
                                landing = false;
                              });
                            },
                            child: ContainerProjeto(
                                control: landing,
                                img: 'assets/gifs/landing.gif',
                                title: 'Landing Page',
                                desc:
                                    'Landing page com design responsivo e animações criada para um fotógrafo fictício desenvolvida para aprimorar as habilidades no uso de SCSS/Sass',
                                stacks: const ['HTML', 'SCSS', 'JQuery'],
                                height: 400,
                                width: 350)),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      child: MouseRegion(
                          onEnter: (val) {
                            setState(() {
                              treino = true;
                            });
                          },
                          onExit: (val) {
                            setState(() {
                              treino = false;
                            });
                          },
                          child: ContainerProjeto(
                              control: treino,
                              img: 'assets/gifs/app.gif',
                              title: 'Ficha de Treino',
                              desc:
                                  'Aplicativo mobile para criação de fichas de treino de musculação. Repositório privado. Em breve disponível pra IOS e Android.',
                              stacks: const ['Flutter', 'MySQL'],
                              height: 400,
                              width: 350)),
                    ),
                  ],
                ),
              )
            : SingleChildScrollView(
                child: Column(
                  children: [
                    ContainerProjeto(
                        control: true,
                        img: 'assets/gifs/frizz.gif',
                        title: 'Vai ter frizz?',
                        desc:
                            'Sistema web que verifica, a partir da umidade do ar, se há indicações para frizz capilar',
                        stacks: const [
                          'HTML & CSS',
                          'JQuery',
                          'OpenWeather API'
                        ],
                        height: 400,
                        width: Get.width),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ContainerProjeto(
                          control: landing,
                          img: 'assets/gifs/landing.gif',
                          title: 'Landing Page',
                          desc:
                              'Landing page com design responsivo e animações criada para um fotógrafo fictício desenvolvida para aprimorar as habilidades no uso de SCSS/Sass',
                          stacks: const ['HTML', 'SCSS', 'JQuery'],
                          height: 400,
                          width: Get.width),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: ContainerProjeto(
                          control: true,
                          img: 'assets/gifs/app.gif',
                          title: 'Ficha de Treino',
                          desc:
                              'Aplicativo mobile para criação de fichas de treino de musculação. Repositório privado. Em breve disponível pra IOS e Android.',
                          stacks: const ['Flutter', 'MySQL'],
                          height: 400,
                          width: Get.width),
                    ),
                  ],
                ),
              ));
  }
}
