import 'package:flutter/material.dart';

import 'package:ristal_institute/Src/Screens/Profile/profile.screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../../utils/Constant/constant.dart';

class ProfileEdit {
  static Future profileUpPopup(BuildContext context) {
    SharedPreferences prefs;
    TextEditingController nameChangeController = TextEditingController();

    save() async {
      prefs = await SharedPreferences.getInstance();
      prefs.setString("username", nameChangeController.text.toString());
    }

    return showGeneralDialog(
      barrierDismissible: false,
      barrierColor: Colors.black.withOpacity(0.5),
      transitionDuration: const Duration(milliseconds: 700),
      context: context,
      pageBuilder: (context, anim1, anim2) {
        return Align(
          alignment: Alignment.center,
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Stack(
              children: [
                Container(
                  //alignment: Alignment.center,
                  width: MediaQuery.of(context).size.width * 0.86,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 230,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15.0,
                          left: 5.0,
                          right: 5.0,
                        ),
                        child: Column(
                          children: [
                            const Text(
                              'Edit Profile',
                              style: TextStyle(
                                color: AppColors.kSecondaryColor,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 10.0,
                            ),
                            TextFormField(
                              controller: nameChangeController,
                              keyboardType: TextInputType.text,
                              decoration: const InputDecoration(
                                label: Text("Name"),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(12),
                                  ),
                                  borderSide: BorderSide(
                                    width: 1.5,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(8),
                                  ),
                                ),
                              ),
                              style: const TextStyle(
                                color: AppColors.kSecondaryColor,
                                fontSize: 15.0,
                              ),
                            ),
                            const SizedBox(width: 5.0),
                            ElevatedButton(
                              onPressed: () {
                                save();
                              },
                              child: const Text(
                                'Save',
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 15.0,
                                  // fontFamily: GoogleFonts.lato().fontFamily,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 5.0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProfileScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.close,
                      color: AppColors.kPrimaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
      transitionBuilder: (context, anim1, anim2, child) {
        return SlideTransition(
          position: Tween(begin: const Offset(0, 1), end: const Offset(0, 0))
              .animate(anim1),
          child: child,
        );
      },
    );
  }
}
