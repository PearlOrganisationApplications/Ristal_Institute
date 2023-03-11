
import 'package:flutter/material.dart';
import 'package:ristal_institute/Src/Widget/circle_avatar_with_title.dart';
import 'package:ristal_institute/utils/Constant/constant.dart';


Widget firstlist(String imgVal, String instructor) {
  return Container(
    width: double.infinity,
    child: Column(
      children: <Widget>[

        Padding(
          padding: const EdgeInsets.all(8),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.asset(
                imgVal,
                width: 100,
                height: 100,
                fit:BoxFit.fill

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
  );
}

Widget drawerList(String text, VoidCallback onTap, String icon) {
  return Container(
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: ListTile(
        onTap: onTap,
        leading: ImageIcon(AssetImage(icon)),
        title: Text(
          text,
          textAlign: TextAlign.start,
          style: const TextStyle(
              color: Colors.black54,
              fontWeight: FontWeight.w500,
              fontSize: CustomFontSize.kTitleFontSize),
        ),
      ),
    ),
  );
}

Widget homeScreen(String titleText, String subTitle) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ListTile(
      title: Text.rich(
        textAlign: TextAlign.center,
        TextSpan(
          text: titleText,
          style: const TextStyle(
              fontWeight: FontWeight.bold, color: Colors.green, fontSize: 28, fontFamily: 'Quicksand'),

        ),
      ),
      subtitle: Text.rich(
        textAlign: TextAlign.justify,
        TextSpan(
          text: subTitle,
          style: const TextStyle(
            fontFamily: 'Rubik',
            fontWeight: FontWeight.normal,
            color: Colors.black,
            fontSize: 15,

          ),
        ),

      ),
    ),
  );
}
