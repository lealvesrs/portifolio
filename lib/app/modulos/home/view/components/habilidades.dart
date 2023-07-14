import 'package:flutter/material.dart';
import 'package:portifolio/app/helper/my_color.dart';

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
  ];
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: 800,
      child: GridView.builder(
          itemCount: 10,
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
    );
  }
}
