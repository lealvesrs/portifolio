import 'package:flutter/material.dart';
import 'package:portifolio/app/helper/my_color.dart';

class CardHome extends StatelessWidget {
  const CardHome(
      {Key? key,
      required this.height,
      required this.title,
      required this.onPressed})
      : super(key: key);

  final double height;
  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: 200,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        color: MyColor.ciano,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: onPressed,
                    icon: const Icon(
                      Icons.add_circle,
                      color: MyColor.background,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Column(
                    children: [
                      const Icon(Icons.abc_outlined),
                      Text(
                        title,
                        style: const TextStyle(
                          fontFamily: 'Ninuto',
                          color: Colors.white,
                          fontSize: 26,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
