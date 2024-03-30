import 'package:flutter/material.dart';
import 'package:portifolio/app/helper/my_color.dart';
import 'package:portifolio/app/modulos/home/view/components/projetos/mini_card.dart';

class ContainerProjeto extends StatelessWidget {
  const ContainerProjeto(
      {Key? key,
      required this.control,
      required this.img,
      required this.title,
      required this.desc,
      required this.stacks,
      required this.height,
      required this.width})
      : super(key: key);

  final bool control;
  final String title;
  final String desc;
  final String img;
  final double height;
  final double width;
  final List<String> stacks;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        border: Border.all(
            color: control
                ? MyColor.ciano
                : const Color.fromARGB(255, 49, 63, 65)),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          Image.asset(
            img,
            width: 350,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 8),
            child: Text(
              maxLines: 2,
              title,
              style: const TextStyle(
                color: MyColor.ciano,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              textAlign: TextAlign.center,
              desc,
              style: const TextStyle(color: Colors.white, fontSize: 13),
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ...stacks.map((stack) => MiniCard(title: stack)).toList(),
            ],
          )
        ],
      ),
    );
  }
}
