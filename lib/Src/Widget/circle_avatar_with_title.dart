


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/Constant/constant.dart';

Widget CircleAvatarWithTitle(String imgVal, String instructor) {
  return Container(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Container(
            height: 141,
            width: 141,
            child: CircleAvatar(
              backgroundColor: Colors.black,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset(
                    imgVal,
                    width: 140,
                    height: 140,
                    fit:BoxFit.fill

                ),
              ),
            ),
          ),

          Text(
            instructor,
            style: const TextStyle(
              fontSize: CustomFontSize.kUserTitleName,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    ),
  );
}
