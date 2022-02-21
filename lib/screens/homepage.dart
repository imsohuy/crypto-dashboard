// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:community_material_icon/community_material_icon.dart';
import 'package:crypto_dashboard/widgets/account_balance.dart';
import 'package:crypto_dashboard/widgets/notification_bell.dart';
import 'package:crypto_dashboard/widgets/user_assests.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('My balance'),
        leading: GestureDetector(
          child: Icon(
            CommunityMaterialIcons.menu,
          ),
        ),
        actions: [
          NotificationBell(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 25.0,
            ),
            AccountBalance(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Divider(
                color: Color.fromRGBO(97, 99, 119, 1),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            UserAssets(),
          ],
        ),
      ),
    );
  }
}
