import 'package:flutter/material.dart';
import 'package:portifolio/app/helper/my_color.dart';
import 'package:portifolio/app/modulos/home/view/components/card_home.dart';
import 'package:portifolio/app/modulos/home/view/components/habilidades.dart';
import 'package:portifolio/app/modulos/home/view/components/projetos.dart';

import 'components/experiencias.dart';
import 'components/historico.dart';
import 'components/sobre.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<void> habilidades({required BuildContext context}) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => const AlertDialog(
        insetPadding: EdgeInsets.all(10),
        backgroundColor: MyColor.background,
        title: Text(
          'STACKS E TECNOLOGIAS',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        content: Habilidades(),
      ),
    );
  }

  Future<void> experiencias({required BuildContext context}) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => const AlertDialog(
        insetPadding: EdgeInsets.all(10),
        backgroundColor: MyColor.background,
        title: Text(
          'EXPERIÊNCIAS PROFISSIONAIS',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        content: Experiencias(),
      ),
    );
  }

  Future<void> historico({required BuildContext context}) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => const AlertDialog(
        insetPadding: EdgeInsets.all(10),
        backgroundColor: MyColor.background,
        title: Text(
          'HISTÓRICO ACADÊMICO',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        content: Historico(),
      ),
    );
  }

  Future<void> projetos({required BuildContext context}) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => const AlertDialog(
        insetPadding: EdgeInsets.all(10),
        backgroundColor: MyColor.background,
        title: Text(
          'PROJETOS',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        content: Projetos(),
      ),
    );
  }

  Future<void> sobre({required BuildContext context}) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) => const AlertDialog(
        insetPadding: EdgeInsets.all(10),
        backgroundColor: MyColor.background,
        title: Text(
          'SOBRE MIM',
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        content: Sobre(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isWeb = MediaQuery.of(context).size.width > 800;
    return Scaffold(
        backgroundColor: MyColor.background,
        body: isWeb
            ? Center(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: SizedBox(
                    height: 510,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                decoration: const BoxDecoration(
                                    border: Border(
                                        left: BorderSide(
                                            color: MyColor.ciano, width: 3))),
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Letícia Alves',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 30),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              CardHome(
                                height: 300,
                                title: 'Sobre mim ',
                                image: 'assets/images/person.png',
                                onPressed: () {
                                  sobre(context: context);
                                },
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 500,
                          child: Wrap(
                            verticalDirection: VerticalDirection.up,
                            alignment: WrapAlignment.start,
                            runSpacing: 12,
                            spacing: 20,
                            children: [
                              CardHome(
                                height: 230,
                                title: 'Habilidades ',
                                image: 'assets/images/light.png',
                                onPressed: () {
                                  habilidades(context: context);
                                },
                              ),
                              CardHome(
                                height: 230,
                                title: 'Histórico acadêmico ',
                                image: 'assets/images/clock.png',
                                onPressed: () {
                                  historico(context: context);
                                },
                              ),
                              CardHome(
                                height: 230,
                                title: 'Projetos ',
                                image: 'assets/images/paper.png',
                                onPressed: () {
                                  projetos(context: context);
                                },
                              ),
                              CardHome(
                                height: 230,
                                title: 'Experiências ',
                                image: 'assets/images/board.png',
                                onPressed: () {
                                  experiencias(context: context);
                                },
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : SingleChildScrollView(
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                          50.0,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  left: BorderSide(
                                      color: MyColor.ciano, width: 3))),
                          child: const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Letícia Alves',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 30),
                            ),
                          ),
                        ),
                      ),
                      CardHome(
                        height: 300,
                        width: 250,
                        title: 'Sobre mim ',
                        image: 'assets/images/person.png',
                        onPressed: () {
                          sobre(context: context);
                        },
                      ),
                      CardHome(
                        height: 300,
                        width: 250,
                        title: 'Habilidades ',
                        image: 'assets/images/light.png',
                        onPressed: () {
                          habilidades(context: context);
                        },
                      ),
                      CardHome(
                        height: 300,
                        width: 250,
                        title: 'Histórico acadêmico ',
                        image: 'assets/images/clock.png',
                        onPressed: () {
                          habilidades(context: context);
                        },
                      ),
                      CardHome(
                        height: 300,
                        width: 250,
                        title: 'Projetos ',
                        image: 'assets/images/paper.png',
                        onPressed: () {
                          projetos(context: context);
                        },
                      ),
                      CardHome(
                        height: 300,
                        width: 250,
                        title: 'Experiências ',
                        image: 'assets/images/board.png',
                        onPressed: () {
                          experiencias(context: context);
                        },
                      ),
                    ],
                  ),
                ),
              ));
  }
}
