import 'package:flutter/material.dart';

import '../../../../../helper/my_color.dart';

class ContainerBorder extends StatefulWidget {
  const ContainerBorder(
      {Key? key, required this.isClicked, required this.title})
      : super(key: key);

  final bool isClicked;
  final String title;

  @override
  State<ContainerBorder> createState() => _ContainerBorderState();
}

class _ContainerBorderState extends State<ContainerBorder> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            border: Border(
                left: BorderSide(
                    color:
                        widget.isClicked ? MyColor.ciano : MyColor.background,
                    width: 4))),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Text(widget.title,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ));
  }
}
