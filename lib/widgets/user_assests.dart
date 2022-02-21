// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:crypto_dashboard/constants/constants.dart';
import 'package:crypto_dashboard/models/coin.dart';
import 'package:crypto_dashboard/widgets/coin_card.dart';
import 'package:flutter/material.dart';

class UserAssets extends StatelessWidget {
  final List<Coin> userProfolio = [
    Coin(
        amount: 0.0069231 * 44000,
        balance: 0.000069231,
        currentPrice: 44000,
        type: CoinType.BITCOIN,
        trend: Trend.UP,
        percentChange: 11.2),
    Coin(
        amount: 0.0431 * 2300,
        balance: 0.0431,
        currentPrice: 2300,
        type: CoinType.ETHEREUM,
        trend: Trend.UP,
        percentChange: 8.2),
    Coin(
        amount: 2.31 * 178,
        balance: 2.31,
        currentPrice: 178,
        type: CoinType.LITECOIN,
        trend: Trend.DOWN,
        percentChange: 19.2),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your porfolio',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16.0,
                ),
              ),
              Text(
                'Total Amount \$378.22',
                style: TextStyle(
                  color: kCaptionColor,
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 15.0),
          ListView.separated(
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return CoinCard(coin: userProfolio[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 15);
            },
            itemCount: userProfolio.length,
          ),
        ],
      ),
    );
  }
}
