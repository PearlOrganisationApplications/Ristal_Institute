


import 'package:flutter/material.dart';
import 'package:ristal_institute/Src/Screens/Course/Widgets/course.widget.dart';
import 'package:ristal_institute/Src/Widget/custom_appbar.dart';

import 'about.course.dart';

class CourseDetailScreen extends StatefulWidget {
  final String title;
  const CourseDetailScreen({Key? key, required this.title}) : super(key: key);

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {

  List<String> headingArr = [];
  List<String> subHeadingArr = [];
  List<String> videoLinkArr = [];

  @override
  initState() {
    super.initState();
    switch(widget.title){
      case 'Android Development': {
//Course Instructor Names
        headingArr.add('Introduction to Android');
        headingArr.add('LinearLayout in Android');
        headingArr.add('Fragments in Android');

        //Course Names
        subHeadingArr.add('Android is an Operating system, mainly used in mobile devices.');
        subHeadingArr.add('Linear layout is used to arrange elements in vertical or horizontal manner.');
        subHeadingArr.add('Fragment is a sub-activity in android.');

        //Course Images
        videoLinkArr.add('YNJKj034TmY');
        videoLinkArr.add('ylPHePaZ0K8');
        videoLinkArr.add('7jcXW0Xwd4Y');
      }
      break;
      case 'Java Programming': {
        //Course Instructor Names
        headingArr.add('Introduction to Java');
        headingArr.add('Class');
        headingArr.add('Interfaces');

        //Course Names
        subHeadingArr.add('Java is a general purpose programming language, mostly used in software development.');
        subHeadingArr.add('Class is a blueprint or a template.');
        subHeadingArr.add('Interface is an alternate of class to achieve multiple inheritance.');

        //Course Images
        videoLinkArr.add('WYpQ1VkXag0');
        videoLinkArr.add('L677QCBCuWk');
        videoLinkArr.add('kHBji-fom6k');
      }
      break;
      default:{
//Course Instructor Names
        headingArr.add('Sample Heading1');
        headingArr.add('Sample Heading2');

        //Course Names
        subHeadingArr.add('This text is generated to test, used as placeholder for description of Heading1.');
        subHeadingArr.add('This text is generated to test, used as placeholder for description of Heading2.');

        //Course Images
        videoLinkArr.add('79pKwdiqcwI');
        videoLinkArr.add('XTJLpZ-JHHU');
      }

    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.customAppBarWithBack(title: widget.title),
      body: courseDetailCard(context, headingArr, subHeadingArr, videoLinkArr/*() {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const AboutCourse(title: "Introduction to Android"),
          ),
        );
      }, "Introduction to Android", "Andoid is an Operating system widely used in mobile devices."*/),
    );
  }
}