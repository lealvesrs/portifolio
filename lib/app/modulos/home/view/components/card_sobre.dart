import 'package:flutter/material.dart';

import '../../../../helper/my_color.dart';

class CardSobre extends StatefulWidget {
  const CardSobre({Key? key, required this.caminho, required this.onTap})
      : super(key: key);

  final String caminho;
  final VoidCallback onTap;

  @override
  State<CardSobre> createState() => _CardSobreState();
}

class _CardSobreState extends State<CardSobre> {
  bool isHover = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 50),
        child: MouseRegion(
          cursor: MaterialStateMouseCursor.clickable,
          onEnter: (val) {
            setState(() {
              isHover = !isHover;
            });
          },
          onExit: (val) {
            setState(() {
              isHover = !isHover;
            });
          },
          child: Container(
            width: 80,
            height: 80,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              border: Border.all(
                  color: isHover ? MyColor.ciano : MyColor.background),
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  widget.caminho,
                  filterQuality: FilterQuality.high,
                  width: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
