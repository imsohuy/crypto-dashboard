// ignore_for_file: prefer_const_constructors_in_immutables, use_key_in_widget_constructors, prefer_const_constructors, avoid_returning_null_for_void, unused_local_variable

import 'package:community_material_icon/community_material_icon.dart';
import 'package:crypto_dashboard/constants/constants.dart';
import 'package:crypto_dashboard/models/coin.dart';
import 'package:crypto_dashboard/utils/adaptive_height_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class CoinCard extends StatelessWidget {
  final Coin coin;
  CoinCard({required this.coin});
  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: .25,
      child: GestureDetector(
        onTap: () {},
        child: Container(
            color: Color.fromRGBO(55, 66, 92, .4),
            height: 90.0.h,
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                SizedBox(
                  width: 40.0.w,
                  child: Image.asset(coin.getImagePath()),
                ),
                SizedBox(width: 20.0),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${coin.toString()} ( ${coin.getCoinAbbr()} )",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "${coin.balance}",
                      style: TextStyle(color: kCaptionColor, fontSize: 14),
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      "${coin.currentPrice}",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    SizedBox(height: 5.0),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            getCoinProgress(coin),
                            style: TextStyle(
                                color: coin.trend == Trend.UP
                                    ? kSuccessColor
                                    : kDangerColor,
                                fontSize: 14),
                          ),
                          SizedBox(width: 2.0),
                          Icon(
                            coin.trend == Trend.UP
                                ? CommunityMaterialIcons.arrow_up_bold
                                : CommunityMaterialIcons.arrow_down_bold,
                            size: 14,
                            color: coin.trend == Trend.UP
                                ? kSuccessColor
                                : kDangerColor,
                          ),
                        ])
                  ],
                )
              ],
            )),
      ),
      actions: [
        IconSlideAction(
          color: kDangerColor,
          icon: CommunityMaterialIcons.close,
          foregroundColor: Colors.white,
          onTap: () => null,
        ),
      ],
      secondaryActions: [
        IconSlideAction(
          color: kSuccessColor,
          icon: CommunityMaterialIcons.plus,
          foregroundColor: Colors.white,
          onTap: () => null,
        )
      ],
    );
  }
}

String getCoinProgress(Coin coin) {
  String returnValue = "";
  if (coin.trend == Trend.UP) {
    returnValue += "+";
  } else {
    returnValue += "-";
  }
  returnValue = "${coin.percentChange}%";
  return returnValue;
}
