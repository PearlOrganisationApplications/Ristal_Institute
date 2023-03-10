import 'package:flutter/material.dart';
import 'package:ristal_institute/App/Preferences/app_preferences.dart';
import 'package:ristal_institute/Src/Screens/Home%20Sceen/Widgets/home.page.widget.dart';
import 'package:ristal_institute/Src/Screens/Profile/Widget/edit.profile.dart';
import 'package:ristal_institute/Src/Screens/Profile/Widget/profile.screen.widget.dart';
import 'package:ristal_institute/Src/Widget/circle_avatar_with_title.dart';
import 'package:ristal_institute/Src/Widget/custom_appbar.dart';
import 'package:ristal_institute/utils/Constant/App%20Key/key.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? userName;
  String? userEmail;

  @override
  void initState() {
    userName = AppPreferences.getDisplayName(AppKeys.userData);
    userEmail = AppPreferences.getEmailAddress(AppKeys.userEmail);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.customAppBarWithBack(title: "Profile"),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return SingleChildScrollView(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child:
                        CircleAvatarWithTitle("assets/images/pic1.jpg", userName.toString()),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 18.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              ProfileEdit.profileUpPopup(context);
                            },
                            child: const Text("Edit")),
                      ],
                    ),
                  ),
                  profileCard(
                      () {}, Icons.email, userEmail.toString(), "Student Email"),
                  profileCard(() {}, Icons.numbers, "Enrollment Number",
                      "Student Enrollment"),
                  profileCard(
                      () {}, Icons.class_rounded, "BSc CS", "Student Course"),
                  profileCard(
                      () {}, Icons.school_rounded, "Computer", "Course Branch"),
                  Padding(
                    padding: const EdgeInsets.all(32.0),
                    child: SizedBox(
                        height: 50,
                        width: 100,
                        child: ElevatedButton(
                            onPressed: () {}, child: const Text("Sign-out"))),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
