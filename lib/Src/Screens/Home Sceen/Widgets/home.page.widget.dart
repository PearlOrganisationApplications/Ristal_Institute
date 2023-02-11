import 'package:flutter/material.dart';
import 'package:ristal_institute/utils/Constant/constant.dart';

Widget firstlist(String imgVal, String text) {
  return Container(

    width: double.infinity,
    child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: CircleAvatar(
            radius: 45.0,
            backgroundImage: AssetImage(
              imgVal,
            ),
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: CustomFontSize.kUserTitleName,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    ),
  );
}

Widget drawerList(String text, VoidCallback onTap) {
  return ListTile(
    onTap: onTap,
    title: Text(
      text,
      textAlign: TextAlign.center,
      style: const TextStyle(
          color: AppColors.kTitleColor,
          fontSize: CustomFontSize.kTitleFontSize),
    ),
  );
}
