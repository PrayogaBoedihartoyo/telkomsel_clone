import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:telkomsel_clone/themes.dart';

class CardInfoHome2 extends StatelessWidget {
  const CardInfoHome2({super.key});

  @override
  Widget build(BuildContext context) {
    Widget listCardInfo(String icons, IconData? iconHelp, String text, String text2, String text3) {
      return Row(
        children: [
          Expanded(
            flex: 1,
            child: Image.asset(icons, width: 36),
          ),
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Column( //cok
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        text,
                        style: boldText13.copyWith(color: primaryTextColor),
                      ),
                      Icon(iconHelp,
                          color: primaryTextColor),
                      const Spacer(),
                      Text(
                        text2,
                        style: regulerText13.copyWith(color: primaryTextColor),
                      ),
                      Icon(Icons.chevron_right,
                          color: primaryTextColor),
                    ],
                  ),
                  Text(
                    text3,
                    style: regulerText10.copyWith(color: primaryTextColor),
                  ),
                ],
              ),
            ),
          ),
        ],
      );
    }

    return Container(
      margin: const EdgeInsets.only(top: 15, left: 16, right: 16),
      padding: const EdgeInsets.only(left: 17, top: 29, right: 17),
      decoration: BoxDecoration(
        color: whiteColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          listCardInfo('assets/icons/phone.png', null, 'voice', 'You have no quota', 'Not yet purchased'),
          const SizedBox(height: 35),
          listCardInfo('assets/icons/SMS.png', null, 'SMS', 'You have no quota', 'Not yet purchased'),
          const SizedBox(height: 35),
          listCardInfo('assets/icons/Wallet.png', Icons.help_outline_rounded, 'Monetary', 'Not yet purchased', 'You have no monetary balance'),
        ],
      ),
    );
  }
}
