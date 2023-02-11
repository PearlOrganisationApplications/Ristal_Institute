import 'package:flutter/material.dart';
import 'package:ristal_institute/Src/Screens/Home%20Sceen/Widgets/home.page.widget.dart';
import 'package:ristal_institute/Src/Screens/Profile/Widget/edit.profile.dart';
import 'package:ristal_institute/Src/Screens/Profile/Widget/profile.screen.widget.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String? userName;

  Future getName() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    userName = preferences.getString("username");
    setState(() {
      userName = userName;
    });
  }

  @override
  void initState() {
    getName();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:
                      firstlist("assets/images/pic1.jpg", userName.toString()),
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
                profileCard(() {}, Icons.email,
                    "vivekyadav@pearlorganisation.com", "Student Email"),
                profileCard(() {}, Icons.numbers, "Enrollment Number",
                    "Student Enrollment"),
                profileCard(
                    () {}, Icons.class_rounded, "BSc CS", "Student Course"),
                profileCard(
                    () {}, Icons.school_rounded, "Computer", "Course Branch"),
              ],
            );
          },
        ),
      ),
    );
  }
}
