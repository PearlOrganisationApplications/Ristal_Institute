import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:ristal_institute/Src/Screens/Course/Widgets/course.widget.dart';
import 'package:ristal_institute/Src/Screens/Course/about.course.dart';
import 'package:ristal_institute/Src/Widget/custom_appbar.dart';

import 'detail.course.dart';

class CourseScreen extends StatefulWidget {
  final String courseType;
  final String image;
  const CourseScreen({Key? key, required this.image, required this.courseType}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  var courseNames = [];
  var courseInstructorNames = [];
  var courseImages = [];

  @override
  initState() {
    super.initState();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.green,
      ));
    });

    switch(widget.courseType){
      case 'Web Development': {
//Course Instructor Names
        courseInstructorNames.add('Prof. Ashish');
        courseInstructorNames.add('Dr. Vishwas Awasthi');

        //Course Names
        courseNames.add('ReactJS');
        courseNames.add('AngularJS');

        //Course Images
        courseImages.add('assets/images/android_development.jpg');
        courseImages.add('assets/images/android_development.jpg');
      }
      break;
      case 'App Development': {
        //Course Instructor Names
        courseInstructorNames.add('Prof. Ashish');
        courseInstructorNames.add('Dr. Vishwas Awasthi');
        courseInstructorNames.add('Anshul Kumar');
        courseInstructorNames.add('Rahul Garg');

        //Course Names
        courseNames.add('Android Development');
        courseNames.add('Flutter');
        courseNames.add('ios Development');
        courseNames.add('Unity');

        //Course Images
        courseImages.add('assets/images/android_development.jpg');
        courseImages.add('assets/images/android_development.jpg');
        courseImages.add('assets/images/android_development.jpg');
        courseImages.add('assets/images/android_development.jpg');
      }
      break;
      case 'Full Stack Development': {
//Course Instructor Names
        courseInstructorNames.add('Prof. Ashish');
        courseInstructorNames.add('Dr. Vishwas Awasthi');
        courseInstructorNames.add('Rahul Garg');

        //Course Names
        courseNames.add('MERN stack Development');
        courseNames.add('MEAN stack Development');
        courseNames.add('PHP Development');

        //Course Images
        courseImages.add('assets/images/android_development.jpg');
        courseImages.add('assets/images/android_development.jpg');
        courseImages.add('assets/images/android_development.jpg');
      }
      break;
      case 'Coding': {
        //Course Instructor Names
        courseInstructorNames.add('Prof. Ashish');
        courseInstructorNames.add('Dr. Vishwas Awasthi');
        courseInstructorNames.add('Rahul Garg');

        //Course Names
        courseNames.add('Java Programming');
        courseNames.add('.NET Programming');
        courseNames.add('Kotlin Programming');

        //Course Images
        courseImages.add('assets/images/android_development.jpg');
        courseImages.add('assets/images/android_development.jpg');
        courseImages.add('assets/images/android_development.jpg');

      }
      break;
      case 'DevOps': {
//Course Instructor Names
        courseInstructorNames.add('Prof. Ashish');

        //Course Names
        courseNames.add('DevOps Technology');

        //Course Images
        courseImages.add('assets/images/android_development.jpg');
      }
      break;
      default:{

      }

    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.customAppBarWithBack(title: "Courses"),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(top: 24.0),
            decoration: BoxDecoration(
                color: Colors.green,
                border: Border.all(color: Colors.green, width: 0)),
            width: double.infinity,
            child: Column(
              children: [
                Image.asset(widget.image, height: 90,),
                Text(widget.courseType, style: TextStyle(color: Colors.white, fontSize: 24, fontWeight: FontWeight.w600),)
              ],
            ),
          ),
          Container(
              decoration: BoxDecoration(
                  border: Border(top: BorderSide(color: Colors.green, width: 0)),
              ),
              width: double.infinity,
              child: SvgPicture.asset("assets/svg/top_wave.svg", height: 100, fit: BoxFit.fitWidth,)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: courseImages.length,
                      itemBuilder: (BuildContext context, int index) {
                        return courseCard(context, () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> CourseDetailScreen( title: courseNames[index],)));

                        }/*"Android Developement"*/, courseImages[index], courseInstructorNames[index], courseNames[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
              width: double.infinity,
              child: SvgPicture.asset("assets/svg/bottom_wave.svg", height: 90, fit: BoxFit.fitWidth,)),
        ],
      ),
    );
  }

  @override
  dispose() {
    var color = Colors.white;
    bool isDarkMode = false;
    try {
      var brightness = SchedulerBinding.instance.platformDispatcher.platformBrightness;
      isDarkMode = brightness == Brightness.dark;
      if (isDarkMode) {
        color = Colors.black;
      }
    }on Exception {
      if (kDebugMode) {
        print('Error on getting system theme for system navigation bar on course.page.dart - On Dispose');
      }
    }
    finally{
      WidgetsBinding.instance.addPostFrameCallback((_) {
        SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
          systemNavigationBarColor: color,
        ));
      });
    }

  }
}
