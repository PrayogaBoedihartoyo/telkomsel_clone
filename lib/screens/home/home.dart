import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:telkomsel_clone/screens/home/components/card_info_1.dart';
import 'package:telkomsel_clone/themes.dart';
import 'components/card_info_2.dart';
import 'components/recomended_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cards = [
    const CardInfoHome(),
    const CardInfoHome2(),
  ];

  int currentIndex = 0;

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

    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 18 : 5, // di render semua
        height: 5,
        margin: const EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
          color:
              currentIndex == index ? whiteColor : whiteColor.withOpacity(0.7),
          borderRadius: BorderRadius.circular(10),
        ),
      );
    }

    Widget cardInfo() {
      return Column(
        children: [
          CarouselSlider(
            items: cards.map((card) {
              return Builder(builder: (BuildContext context) {
                return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: const EdgeInsets.symmetric(horizontal: 5.0),
                  child: card,
                );
              });
            }).toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              height: 333,
              enableInfiniteScroll: false,
              onPageChanged: (index, reason) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: cards.map((card) {
              int index = cards.indexOf(card);
              return indicator(index);
            }).toList(),
          ),
        ],
      );
    }

    Widget recomededForYou() {
      return Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 45, left: 16, right: 16),
            child: Row(
              children: [
                Text(
                  'Recomended For You',
                  style: boldText15.copyWith(color: primaryTextColor),
                ),
                const Spacer(),
                Text(
                  'See All',
                  style: regulerText12.copyWith(color: blueColor),
                ),
              ],
            ),
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                RecomendeCard(title: 'Kuota Ketengan 10GB', date: '29 Jun 2021 13:08:07', price: 'Rp 40,200'),
                SizedBox(width: 16),
                RecomendeCard(title: 'Kuota Borongan 10GB', date: '29 Jun 2021 13:08:07', price: 'Rp 42,200'),
              ],
            ),
          )
        ],
      );
    }

    Widget content() {
      return Container(
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: whiteColor,
          borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
        ),
        child: Column(
          children: [
            recomededForYou(),
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
            cardInfo(),
            content(),
          ],
        ),
      ),
    );
  }
}
