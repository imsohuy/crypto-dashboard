// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:community_material_icon/community_material_icon.dart';
import 'package:crypto_dashboard/constants/constants.dart';
import 'package:flutter/material.dart';

class AccountBalance extends StatelessWidget {
  const AccountBalance({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Balance',
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 6),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$378.22',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 26.0,
                ),
              ),
              GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(55, 66, 92, 78),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: Center(
                      child: Text(
                        '+ Add money',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                  )),
            ],
          ),
          SizedBox(height: 6.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '+ 2.14%',
                style: TextStyle(color: kSuccessColor, fontSize: 16.0),
              ),
              SizedBox(width: 5.0),
              Icon(
                CommunityMaterialIcons.arrow_up_bold,
                color: kSuccessColor,
                size: 18,
              )
            ],
          )
        ],
      ),
    );
  }
}
