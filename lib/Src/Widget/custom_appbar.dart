

import 'package:flutter/material.dart';

class CustomAppBar {

  static customAppBarWithMenuButton({required String title}){
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.white,
            ),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        },
      ),
      title: Text(title, style: const TextStyle(color: Colors.white),),
      backgroundColor: Colors.green,
    );
  }

  static customAppBarWithBack({required String title}){
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return IconButton(onPressed: () {
            Navigator.pop(context);
            },
              icon: const Icon(Icons.arrow_back_ios_new_rounded),
              color: Colors.white,
          );
        },
      ),
      title: Text(title, style: const TextStyle(color: Colors.white),),
      backgroundColor: Colors.green,
    );
  }
}

/*
BackButton(
color: Colors.white,
onPressed: () {
Navigator.pop(context);
},
)*/
