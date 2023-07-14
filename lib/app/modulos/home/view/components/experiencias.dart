import 'package:flutter/material.dart';

import '../../../../helper/my_color.dart';

class Experiencias extends StatefulWidget {
  const Experiencias({super.key});

  @override
  State<Experiencias> createState() => _ExperienciasState();
}

class _ExperienciasState extends State<Experiencias> {
  final listTech = [
    'VueJS',
    'Vuetify',
    'JavaScript',
    'Git',
    'NodeJS',
    'AWS',
    'Docker',
    'Kubernets',
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
  ];
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 800,
      child: Column(children: [
        const Text('Itepbrasil Consultoria'),
        SizedBox(
          height: 300,
          width: 600,
          child: GridView.builder(
              itemCount: 8,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                childAspectRatio: 1,
              ),
              itemBuilder: ((context, index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 200),
                  padding: EdgeInsets.all(listBool[index] ? 30 : 35),
                  child: Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                        border: Border.all(
                            color: listBool[index]
                                ? MyColor.ciano
                                : MyColor.background)),
                    child: InkWell(
                      onTap: () {},
                      child: SizedBox(
                          child: Center(
                              child: Text(
                        listTech[index],
                        style: const TextStyle(color: Colors.white),
                      ))),
                      onHover: (val) {
                        setState(() {
                          listBool[index] = val;
                        });
                      },
                    ),
                  ),
                );
              })),
        ),
      ]),
    );
  }
}
