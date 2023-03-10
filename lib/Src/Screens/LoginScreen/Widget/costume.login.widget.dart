import 'package:flutter/material.dart';

import '../../../Widget/dimension.widget.dart';

Widget welcomeTextLogin() {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      vSizedBox5,
      Hero(
        tag: "logo",
        child: Image.asset(
          "assets/images/Logo.PNG",
          height: 150,
          width: 150,
        ),
      ),

      Padding(
        padding: const EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 2.0),
        child: Center(
          child: RichText(
            text: const TextSpan(
              children: [
                TextSpan(
                  children: [
                    TextSpan(
                      text: '           Welcome ',
                      style: TextStyle(
                        color: Colors.green,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.0,
                        // fontFamily: AppFonts.contax,
                      ),
                    ),
                    TextSpan(
                      text: 'To \n',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 18.0,
                        // fontFamily: AppFonts.contax,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(
                      text: 'Ristal University',
                      style: TextStyle(
                        color: Colors.green,
                        fontSize: 28.0,

                        // fontFamily: AppFonts.contax,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // vSizedBox2,
      Padding(
        padding: const EdgeInsets.fromLTRB(35.0, 0.0, 35.0, 2.0),
        child: RichText(
          text: const TextSpan(
            children: [
              TextSpan(
                children: [
                  TextSpan(
                    text: 'Log In To ',
                    style: TextStyle(
                      // color:
                      // themeFlag ? AppColors.creamColor : AppColors.mirage,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  ),
                  TextSpan(
                    text: 'Your ',
                    style: TextStyle(
                      // color:
                      // themeFlag ? AppColors.creamColor : AppColors.mirage,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextSpan(
                    text: 'Account Right Now ! ',
                    style: TextStyle(
                      // color:
                      // themeFlag ? AppColors.creamColor : AppColors.mirage,
                      fontSize: 12.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
