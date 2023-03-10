import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ristal_institute/Src/Screens/Course/course.page.dart';
import 'package:ristal_institute/Src/Widget/custom_appbar.dart';

import '../Home Sceen/Widgets/home.page.widget.dart';

class CourseType extends StatefulWidget {
  const CourseType({Key? key}) : super(key: key);

  @override
  State<CourseType> createState() => _CourseTypeState();
}

class _CourseTypeState extends State<CourseType> {
  var courseTypeArr = ['Web Development','App Development','Full Stack Development','Coding','DevOps'];
  var courseInstructorArr = ['Prof. Prem Nath', 'Dr. Ashish Sharma', 'Mr. Varun Barthwal', 'Ashutosh Rawat', 'Prof. Vishwajeet'];
  var imageArr = ['assets/icons/web_development.png','assets/icons/app-development.png','assets/icons/full_stack.png','assets/icons/coding.png','assets/icons/devops.png',];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.customAppBarWithBack(title: "Choose Course Type"),
      body: LayoutBuilder(
          builder: (BuildContext context, Constraints constraints) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 1 / 1,
                  crossAxisCount: 2,),
              itemCount: courseTypeArr.length,
              itemBuilder: (BuildContext context, index) {
                return listofAstro(context, imageArr[index], courseInstructorArr[index], courseTypeArr[index]);
              }),
        );
      }),
    );
  }
}

Widget listofAstro(BuildContext context, String image, String courseInstructor, String courseType, ) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CourseScreen(courseType: courseType, image: image),
          ),
        );
      },
      child: Card(
        elevation: 4,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            firstlist(image, courseType
                //"assets/images/fj.jpd","Bachelor of Procurement and Logistics Management"
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:  [Text(courseInstructor)],
            ),
          ],
        ),
      ),
    ),
  );
}
