import 'package:flutter/material.dart';

import '../../../../helper/my_color.dart';

class MiniCard extends StatelessWidget {
  const MiniCard({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 30,
        width: 90,
        decoration: BoxDecoration(
            color: MyColor.ciano, borderRadius: BorderRadius.circular(15)),
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            title,
            style: const TextStyle(
                fontSize: 11, color: Colors.black, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
