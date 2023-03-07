
import 'package:flutter/material.dart';
import 'package:ristal_institute/utils/Constant/constant.dart';


Widget drawerHeader(String imgVal, String instructor) {
  return Container(
    width: double.infinity,
    child: ListView(
      children: <Widget>[

        Container(
          height: 150,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            //backgroundImage: AssetImage("assets/icons/profile_pic.png"),
            child: Image.asset("assets/icons/profile_pic.png", height: 148.0, width: 148.0,),
          ),
        ),

        Text(
          instructor,
          style: const TextStyle(
            fontSize: 24.0,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}



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
      padding: const EdgeInsets.only(bottom: 2.0, left: 16.0, right: 16.0),
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
  return ListTile(
    title: Text.rich(
      TextSpan(
        text: titleText,
        style: const TextStyle(
            fontWeight: FontWeight.bold, color: Colors.green, fontSize: 28),
        children: <TextSpan>[
          TextSpan(
            text: subTitle,
        style: const TextStyle(
              fontWeight: FontWeight.normal,
              color: Colors.black,
              fontSize: 15,

            ),
          ),
        ],
      ),
    ),
  );
}
