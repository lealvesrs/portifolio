import 'package:flutter/material.dart';
import 'package:portifolio/app/modulos/home/view/components/card_sobre.dart';

import '../../../../helper/platform.dart';

class Habilidades extends StatefulWidget {
  const Habilidades({super.key});

  @override
  State<Habilidades> createState() => _HabilidadesState();
}

class _HabilidadesState extends State<Habilidades> {
  final listTech = [
    'HTML',
    'CSS',
    'JavaScript',
    'VueJS',
    'Vuetify',
    'JQuery',
    'Flutter',
    'C++',
    'C',
    'Python',
    'NodeJS',
    'Bootstrap',
    'SQL',
    'Git',
  ];

  late List<bool> listBool;

  @override
  void initState() {
    super.initState();
    listBool = List<bool>.generate(listTech.length, (index) => false);
  }

  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 800,
      child: GridView.builder(
          itemCount: 14,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isMobile
                ? 2
                : isTablet
                    ? 3
                    : 4,
            childAspectRatio: 1,
          ),
          itemBuilder: ((context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: CardSobre(
                caminho: 'assets/images/${listTech[index]}.png',
                title: listTech[index],
              ),
            );
          })),
    );
  }
}
