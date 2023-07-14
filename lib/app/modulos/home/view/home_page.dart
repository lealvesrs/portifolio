import 'package:flutter/material.dart';
import 'package:portifolio/app/helper/my_color.dart';
import 'package:portifolio/app/modulos/home/view/components/card_home.dart';
import 'package:portifolio/app/modulos/home/view/components/habilidades.dart';

import 'components/experiencias.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColor.background,
      body: SingleChildScrollView(
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 80.0, left: 80),
                    child: Container(
                      decoration: const BoxDecoration(
                          border: Border(
                              left:
                                  BorderSide(color: MyColor.ciano, width: 3))),
                      child: const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Letícia Alves',
                          style: TextStyle(
                              fontFamily: 'Ninuto',
                              color: Colors.white,
                              fontSize: 30),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Center(
            child: SizedBox(
              width: 500,
              child: Wrap(
                verticalDirection: VerticalDirection.up,
                alignment: WrapAlignment.end,
                runSpacing: 12,
                spacing: 20,
                children: [
                  CardHome(
                    height: 230,
                    title: 'Habilidades ',
                    onPressed: () {
                      habilidades(context: context);
                    },
                  ),
                  CardHome(
                    height: 230,
                    title: 'Histórico ',
                    onPressed: () {
                      habilidades(context: context);
                    },
                  ),
                  CardHome(
                    height: 230,
                    title: 'Projetos ',
                    onPressed: () {
                      habilidades(context: context);
                    },
                  ),
                  CardHome(
                    height: 230,
                    title: 'Experiências ',
                    onPressed: () {
                      experiencias(context: context);
                    },
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
