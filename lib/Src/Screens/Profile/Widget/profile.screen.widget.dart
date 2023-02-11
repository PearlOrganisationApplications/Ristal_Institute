import 'package:flutter/material.dart';

Widget profileCard(VoidCallback onPressed, IconData icon, String text,String title) {
  return GestureDetector(
    onTap: onPressed,
    child: Card(
      color: Colors.white,
      margin: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
      child: ListTile(
        leading: Icon(
          icon,
          color: Colors.teal,
        ),
        title: Text(title),
        subtitle: Text(
          text,
          style: const TextStyle(
            color: Colors.teal,
            fontSize: 20.0,
            fontFamily: 'Source Sans Pro',
          ),
        ),
      ),
    ),
  );
}
