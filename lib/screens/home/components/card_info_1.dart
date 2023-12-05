import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../themes.dart';

class CardInfoHome extends StatelessWidget {
  const CardInfoHome({super.key});

  @override
  Widget build(BuildContext context) {
    Widget circularPercent(double percent) {
      return CircularPercentIndicator(
        radius: 22.0,
        lineWidth: 7.0,
        animation: true,
        percent: percent,
        backgroundColor: lightGreyColor,
        circularStrokeCap: CircularStrokeCap.round,
        progressColor: orangColor,
      );
    }

    Widget cardInfo_1() {
      return Row(
        children: [
          Expanded(flex: 1, child: circularPercent(0)),
          Expanded(
              flex: 3,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('Internet',
                          style: boldText13.copyWith(color: primaryTextColor)),
                      const Spacer(),
                      Text(
                        'Not yet Purchaced',
                        style: mediumText13.copyWith(color: primaryTextColor),
                      ),
                      Icon(Icons.chevron_right, color: primaryTextColor),
                    ],
                  ),
                  Text('You have no kuota',
                      style: mediumText12.copyWith(color: primaryTextColor)),
                ],
              ))
        ],
      );
    }

    Widget cardInfo_2() {
      return Row(
        children: [
          Expanded(
            child: circularPercent(0.9),
          ),
          const SizedBox(width: 1),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Multimedia',
                          style: boldText13.copyWith(color: primaryTextColor)),
                      const Spacer(),
                      Text('9.2GB ',
                          style:
                              semiBoldText13.copyWith(color: primaryTextColor)),
                      Text('/ 10GB Left',
                          style:
                              mediumText13.copyWith(color: primaryTextColor)),
                      Icon(Icons.chevron_right, color: primaryTextColor),
                    ],
                  ),
                  Row(
                    children: [
                      Image.asset('assets/icons/icons-warning.png', width: 13),
                      const SizedBox(width: 5),
                      Text('9.2 GB / 10 GB is expiring tomorrow',
                          style: mediumText10.copyWith(
                              color: brownColor, letterSpacing: 0.2)),
                    ],
                  )
                ],
              )),
        ],
      );
    }

    return Container(
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
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                child: Column(
                  children: [
                    cardInfo_1(),
                    const SizedBox(height: 30),
                    cardInfo_2(),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
