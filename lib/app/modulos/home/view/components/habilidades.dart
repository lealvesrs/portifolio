import 'package:flutter/material.dart';
import 'package:portifolio/app/modulos/home/view/components/card_stacks.dart';

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
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();
    listBool = List<bool>.generate(listTech.length, (index) => false);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 800,
      child: Scrollbar(
        controller: _scrollController,
        thumbVisibility: true,
        trackVisibility: true,
        child: GridView.builder(
            controller: _scrollController,
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
                child: CardStack(
                  caminho: 'assets/images/${listTech[index]}.png',
                  title: listTech[index],
                ),
              );
            })),
      ),
    );
  }
}
