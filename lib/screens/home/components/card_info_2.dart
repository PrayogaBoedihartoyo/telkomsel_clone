import 'package:flutter/cupertino.dart';
import 'package:telkomsel_clone/themes.dart';

class CardInfoHome2 extends StatelessWidget {
  const CardInfoHome2({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
      height: 333,
      decoration: BoxDecoration(
        color: whiteColor, borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
