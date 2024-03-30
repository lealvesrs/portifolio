import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:portifolio/app/helper/platform.dart';

import '../../../../../helper/my_color.dart';

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
        width: isWeb ? 100 : 80,
        decoration: BoxDecoration(
            color: MyColor.ciano, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Center(
            child: AutoSizeText(
              textAlign: TextAlign.center,
              title,
              minFontSize: 9,
              maxFontSize: 13,
              style: const TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ),
        ),
      ),
    );
  }
}
