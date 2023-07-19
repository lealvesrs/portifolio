import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portifolio/app/helper/my_color.dart';
import 'package:portifolio/app/modulos/home/view/components/mini_card.dart';

class Projetos extends StatefulWidget {
  const Projetos({super.key});

  @override
  State<Projetos> createState() => _ProjetosState();
}

class _ProjetosState extends State<Projetos> {
  bool frizz = false;
  bool treino = false;

  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 800;
    return SizedBox(
        height: 400,
        width: 800,
        child: isWeb
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    child: MouseRegion(
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
                      child: Container(
                        width: 350,
                        height: 500,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: frizz
                                  ? MyColor.ciano
                                  : const Color.fromARGB(255, 49, 63, 65)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              '../assets/gifs/frizz.gif',
                              width: 350,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.link,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    maxLines: 2,
                                    'Vai ter frizz?',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                textAlign: TextAlign.center,
                                'Sistema web que verifica, a partir da umidade do ar, se há indicações para frizz',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ),
                            const Spacer(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MiniCard(title: 'HTML & CSS'),
                                MiniCard(title: 'JQuery'),
                                MiniCard(title: 'OpenWeather API'),
                              ],
                            )
                          ],
                        ),
                      ),
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
                      child: Container(
                        width: 350,
                        height: 500,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          border: Border.all(
                              color: treino
                                  ? MyColor.ciano
                                  : const Color.fromARGB(255, 49, 63, 65)),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              '../assets/gifs/frizz.gif',
                              width: 350,
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.link,
                                  color: Colors.white,
                                  size: 17,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(top: 8.0),
                                  child: Text(
                                    maxLines: 2,
                                    'Ficha de Treino',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 20),
                                  ),
                                ),
                              ],
                            ),
                            const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20.0),
                              child: Text(
                                textAlign: TextAlign.center,
                                'Aplicativo mobile para criação de fichas de treino de musculação',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 13),
                              ),
                            ),
                            const Spacer(),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                MiniCard(title: 'Flutter'),
                                MiniCard(title: 'MySQL'),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 200),
                      child: MouseRegion(
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
                        child: Container(
                          width: Get.width,
                          height: 400,
                          clipBehavior: Clip.antiAlias,
                          decoration: BoxDecoration(
                            border: Border.all(
                                color: frizz
                                    ? MyColor.ciano
                                    : const Color.fromARGB(255, 49, 63, 65)),
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: Column(
                            children: [
                              Image.asset(
                                '../assets/gifs/frizz.gif',
                                width: Get.width,
                              ),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.link,
                                    color: Colors.white,
                                    size: 17,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(top: 8.0),
                                    child: Text(
                                      maxLines: 2,
                                      'Vai ter frizz?',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                  ),
                                ],
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(horizontal: 20.0),
                                child: Text(
                                  textAlign: TextAlign.center,
                                  'Sistema web que verifica, a partir da umidade do ar, se há indicações para frizz',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
                                ),
                              ),
                              const Spacer(),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Expanded(
                                      child: MiniCard(title: 'HTML & CSS')),
                                  MiniCard(title: 'JQuery'),
                                  MiniCard(title: 'OpenWeather API'),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 8.0),
                      child: AnimatedContainer(
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
                          child: Container(
                            width: Get.width,
                            height: 400,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: treino
                                      ? MyColor.ciano
                                      : const Color.fromARGB(255, 49, 63, 65)),
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  '../assets/gifs/frizz.gif',
                                  width: 350,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Icon(
                                      Icons.link,
                                      color: Colors.white,
                                      size: 17,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top: 8.0),
                                      child: Text(
                                        maxLines: 2,
                                        'Ficha de Treino',
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 20),
                                      ),
                                    ),
                                  ],
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 20.0),
                                  child: Text(
                                    textAlign: TextAlign.center,
                                    'Aplicativo mobile para criação de fichas de treino de musculação',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
                                  ),
                                ),
                                const Spacer(),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    MiniCard(title: 'Flutter'),
                                    MiniCard(title: 'MySQL'),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ));
  }
}
