import 'package:flutter/material.dart';
import 'package:portifolio/app/helper/platform.dart';

import '../../../../helper/my_color.dart';

class CardSobre extends StatefulWidget {
  const CardSobre(
      {Key? key,
      required this.caminho,
      this.title,
      this.onTap,
      this.containerSize,
      this.imgSize})
      : super(key: key);

  final double? containerSize;
  final double? imgSize;
  final String caminho;
  final String? title;
  final VoidCallback? onTap;

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
        duration: const Duration(milliseconds: 200),
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
            width: widget.containerSize ?? 80,
            height: widget.containerSize ?? 80,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              border: Border.all(
                  color:
                      isHover || isMobile ? MyColor.ciano : MyColor.background),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: widget.title != null
                  ? MainAxisAlignment.spaceEvenly
                  : MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  widget.caminho,
                  filterQuality: FilterQuality.high,
                  width: isMobile
                      ? widget.imgSize ?? 45
                      : isTablet
                          ? widget.imgSize ?? 55
                          : 60,
                ),
                Visibility(
                  visible: widget.title != null,
                  child: Text(
                    widget.title ?? "",
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
