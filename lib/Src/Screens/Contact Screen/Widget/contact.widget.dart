
import 'package:flutter/material.dart';

 socialMedia(String image, VoidCallback onTap) {
  return InkWell(
    onTap: onTap,
    child: Image(image: AssetImage(image),height: 25,width: 25,)
  );
}
customEmailSender(){}