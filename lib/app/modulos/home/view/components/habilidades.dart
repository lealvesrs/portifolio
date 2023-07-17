import 'package:flutter/material.dart';
import 'package:portifolio/app/helper/my_color.dart';

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

  final listBool = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
  ];
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
            return AnimatedContainer(
              duration: const Duration(milliseconds: 200),
              padding: EdgeInsets.all(listBool[index] ? 30 : 35),
              child: MouseRegion(
                onEnter: (val) {
                  setState(() {
                    listBool[index] = !listBool[index];
                  });
                },
                onExit: (val) {
                  setState(() {
                    listBool[index] = !listBool[index];
                  });
                },
                child: Container(
                  clipBehavior: Clip.antiAlias,
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: listBool[index]
                            ? MyColor.ciano
                            : MyColor.background),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        '../assets/images/${listTech[index]}.png',
                        width: isMobile
                            ? 45
                            : isTablet
                                ? 65
                                : 80,
                      ),
                      Text(
                        listTech[index],
                        style: const TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            );
          })),
    );
  }
}
