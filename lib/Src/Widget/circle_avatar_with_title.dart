


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../utils/Constant/constant.dart';

Widget CircleAvatarWithTitle(
    {
      required String image,
      required double imageHeight,
      required double imageWidth,
      required Color imageBackgroundColor,
      required String title,
    }
    ) {
  return Container(
    width: double.infinity,
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Container(
            height: imageHeight+1,
            width: imageWidth+1,
            child: CircleAvatar(
              backgroundColor: imageBackgroundColor,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(70),
                child: Image.asset(
                    image,
                    width: imageWidth,
                    height: imageHeight,
                    fit:BoxFit.fill

                ),
              ),
            ),
          ),

          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black45,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    ),
  );
}
