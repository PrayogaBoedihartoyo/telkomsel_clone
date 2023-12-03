import 'package:flutter/material.dart';
import 'package:telkomsel_clone/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerContent(String icons, String text) {
      return Container(
          margin: const EdgeInsets.only(top: 15 , right: 10),
          padding: const EdgeInsets.fromLTRB(8, 5, 2, 5),
          decoration: BoxDecoration(
            color: darkRedColor,
            borderRadius: const BorderRadius.all(Radius.circular(10)),
          ),
          child: Row(
            children: [
              Image.asset(icons, width: 10),
              const SizedBox(width: 10),
              Text(text, style: boldText13.copyWith(color: whiteColor)),
              Icon(Icons.chevron_right_rounded, color: whiteColor),
            ],
          ));
    }

    Widget header() {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  'Hi, James',
                  style: boldText15.copyWith(color: whiteColor),
                ),
                const Spacer(),
                Icon(
                  Icons.qr_code,
                  color: whiteColor,
                  size: 28,
                ),
                const SizedBox(width: 12),
                Image.asset(
                  'assets/icons/icons-email.png',
                  width: 32,
                ),
                const SizedBox(width: 12),
                Image.asset(
                  'assets/icons/icons-help.png',
                  width: 25,
                ),
              ],
            ),
            const SizedBox(height: 3),
            Row(
              children: [
                Text(
                  '081387585910',
                  style: boldText15.copyWith(color: whiteColor),
                ),
                const SizedBox(width: 8),
                Image.asset(
                  'assets/icons/icons-plus.png',
                  width: 16,
                ),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                headerContent('assets/icons/icons-love.png', ' 19 Points'),
                headerContent('assets/icons/icons-star.png', 'Daily Check-in'),
              ],
            )
          ],
        ),
      );
    }

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              redColor,
              redColor,
              yellowColor,
            ],
            begin: Alignment.centerLeft,
            end: Alignment.topRight,
            stops: const [0.1, 0.6, 1],
          ),
        ),
        child: ListView(
          children: [
            header(),
          ],
        ),
      ),
    );
  }
}
