import 'package:flutter/material.dart';
import 'package:portifolio/app/helper/platform.dart';

import '../../../../helper/my_color.dart';

class Experiencias extends StatefulWidget {
  const Experiencias({super.key});

  @override
  State<Experiencias> createState() => _ExperienciasState();
}

class _ExperienciasState extends State<Experiencias> {
  final listTechItep = [
    'VueJS',
    'Vuetify',
    'JavaScript',
    'Git',
    'NodeJS',
  ];

  final listTechMoni = [
    'HTML',
    'CSS',
    'JavaScript',
    'C',
    'C++',
    'PHP',
  ];

  final listBoolItep = [
    false,
    false,
    false,
    false,
    false,
  ];

  final listBoolMoni = [
    false,
    false,
    false,
    false,
    false,
    false,
  ];
  bool isHover = false;

  var exp = 1;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 800,
      child: ListView(shrinkWrap: true, padding: EdgeInsets.zero, children: [
        Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              color: const Color.fromARGB(255, 17, 28, 29),
              child: ListView(
                shrinkWrap: true,
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        exp = 1;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: exp == 1
                                        ? MyColor.ciano
                                        : MyColor.background,
                                    width: 4))),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text('ItepBrasil Consultoria',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        exp = 2;
                      });
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            border: Border(
                                left: BorderSide(
                                    color: exp == 2
                                        ? MyColor.ciano
                                        : MyColor.background,
                                    width: 4))),
                        child: const Padding(
                          padding: EdgeInsets.all(15.0),
                          child: Text(
                            'Monitoria de Programação e Banco de Dados',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  )
                ],
              ),
            )),
        const Padding(
          padding: EdgeInsets.only(top: 50.0, left: 15),
          child: Text(
            'Atribuições',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 15),
          child: Text(
            exp == 1
                ? "Estágio - Desenvolvedora Full Stack\n"
                    "08/2022 - 02/2023"
                : "Monitora dos alunos do Ensino Médio e da Graduação\n"
                    "Projeto de Ensino do IFSP campus Votuporanga\n"
                    "04/2023 - atualmente",
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(top: 50.0, left: 15),
          child: Text(
            'Tecnologias utilizadas',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),
          ),
        ),
        GridView.builder(
            shrinkWrap: true,
            itemCount: exp == 1 ? listTechItep.length : listTechMoni.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: isMobile
                  ? 2
                  : isTablet
                      ? 3
                      : 5,
              childAspectRatio: 1,
            ),
            itemBuilder: ((context, index) {
              return AnimatedContainer(
                duration: const Duration(milliseconds: 50),
                padding: EdgeInsets.all(exp == 1
                    ? listBoolItep[index]
                        ? 30
                        : 35
                    : listBoolMoni[index]
                        ? 30
                        : 35),
                child: MouseRegion(
                  onEnter: (val) {
                    setState(() {
                      exp == 1
                          ? listBoolItep[index] = !listBoolItep[index]
                          : listBoolMoni[index] = !listBoolMoni[index];
                    });
                  },
                  onExit: (val) {
                    setState(() {
                      exp == 1
                          ? listBoolItep[index] = !listBoolItep[index]
                          : listBoolMoni[index] = !listBoolMoni[index];
                    });
                  },
                  child: Container(
                    clipBehavior: Clip.antiAlias,
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      border: Border.all(
                          color: exp == 1
                              ? listBoolItep[index]
                                  ? MyColor.ciano
                                  : MyColor.background
                              : listBoolMoni[index]
                                  ? MyColor.ciano
                                  : MyColor.background),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          exp == 1
                              ? 'assets/images/${listTechItep[index]}.png'
                              : 'assets/images/${listTechMoni[index]}.png',
                          width: 43,
                        ),
                        Text(
                          exp == 1 ? listTechItep[index] : listTechMoni[index],
                          style: const TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            })),
      ]),
    );
  }
}
