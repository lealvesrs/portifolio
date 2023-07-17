import 'package:flutter/material.dart';
import 'package:portifolio/app/helper/my_color.dart';

class CardHome extends StatelessWidget {
  const CardHome(
      {Key? key,
      required this.height,
      required this.title,
      required this.image,
      required this.onPressed})
      : super(key: key);

  final double height;
  final String title;
  final String image;
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
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                  onPressed: onPressed,
                  icon: const Icon(
                    Icons.add_circle,
                    color: MyColor.background,
                  )),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 43,
                      child: Image.asset(
                        image,
                      ),
                    ),
                  ),
                  Text(
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 26,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
