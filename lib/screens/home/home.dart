import 'package:flutter/material.dart';
import 'package:telkomsel_clone/themes.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    Widget headerContent(String icons, String text) {
      return Container(
          margin: const EdgeInsets.only(top: 15, right: 10),
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

    Widget cardInfo() {
      return Column(
        children: [
          Container(
            height: 333,
            margin: const EdgeInsets.only(top: 16, left: 16, right: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15), color: whiteColor),
            child: Column(
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: greyCarColor,
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 17, top: 27, bottom: 21),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Rp 0',
                              style: extraBoldText26.copyWith(
                                  color: primaryTextColor)),
                          Text('Active until 22 Sep 2023',
                              style:
                                  mediumText12.copyWith(color: darkGreyColor)),
                          const Spacer(),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 19, vertical: 7),
                                decoration: BoxDecoration(
                                  color: redButtonColor,
                                  borderRadius: BorderRadius.circular(16.5),
                                ),
                                child: Text(
                                  'Buy Package',
                                  style:
                                      mediumText12.copyWith(color: whiteColor),
                                ),
                              ),
                              const SizedBox(width: 18),
                              Text('Top Up',
                                  style: mediumText12.copyWith(
                                      color: darkGreyColor)),
                              const SizedBox(width: 18),
                              Text('Send Gift',
                                  style: mediumText12.copyWith(
                                      color: darkGreyColor)),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Container(),
                )
              ],
            ),
          ),
        ],
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
            cardInfo(),
          ],
        ),
      ),
    );
  }
}
