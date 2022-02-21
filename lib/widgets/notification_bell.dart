// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:community_material_icon/community_material_icon.dart';
import 'package:crypto_dashboard/constants/constants.dart';
import 'package:flutter/material.dart';

class NotificationBell extends StatelessWidget {
  const NotificationBell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: EdgeInsets.only(right: 16.0, top: 16.0),
        child: Stack(
          alignment: Alignment.topRight,
          children: [
            Icon(CommunityMaterialIcons.bell),
            Container(
                width: 10,
                height: 10,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: kDangerColor)),
          ],
        ),
      ),
    );
  }
}
