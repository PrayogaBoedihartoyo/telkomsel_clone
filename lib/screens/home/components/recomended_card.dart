import 'package:flutter/cupertino.dart';

import '../../../themes.dart';

class RecomendeCard extends StatelessWidget {
  const RecomendeCard({
    super.key, required this.title, required this.date, required this.price,
  });

  final String title;
  final String date;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20, bottom: 28),
      height: 131,
      width: 284,
      decoration: BoxDecoration(
        borderRadius:
        const BorderRadius.vertical(top: Radius.circular(24)),
        color: whiteColor,
        boxShadow: [
          BoxShadow(
            color: greyColor,
            offset: const Offset(0, 1),
            blurRadius: 2,
          ),
        ],
      ),
      child: Stack(
        children: [
          ClipPath(
            clipper: BackgroundClipper(),
            child: Container(
              padding: const EdgeInsets.only(left: 11, top: 2),
              height: 18,
              width: 90,
              decoration: BoxDecoration(
                color: bluePurpleColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(14),
                ),
              ),
              child: Text(
                'Buy it again',
                style: mediumText9.copyWith(color: whiteColor, letterSpacing: 0.2),
              ),
            ),
          ),
          Positioned(
            top: 27,
            left: 18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: mediumText12.copyWith(color: primaryTextColor)),
                const SizedBox(height: 5),
                Text(date,
                    style: mediumText15.copyWith(color: primaryTextColor)),
                const SizedBox(height: 15),
                Text(price,
                    style: boldText14.copyWith(color: redColor)),
              ],
            ),
          ),
          Positioned(
            right: 7,
            top: 7,
            child: Image.asset(
              'assets/icons/Icon-box-play.png',
              width: 45,
            ),
          ),
        ],
      ),
    );
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    path.lineTo(size.width - 20, size.height);
    path.quadraticBezierTo(size.width - 10, size.height, size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}