import 'package:flutter/material.dart';
import 'package:ristal_institute/Src/Screens/Course/Widgets/course.widget.dart';
import 'package:ristal_institute/Src/Screens/Course/about.course.dart';

class CourseScreen extends StatefulWidget {
  const CourseScreen({Key? key}) : super(key: key);

  @override
  State<CourseScreen> createState() => _CourseScreenState();
}

class _CourseScreenState extends State<CourseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Courses"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraint) {
          return Column(
            children: <Widget>[
              Expanded(
                child: ListView.builder(
                  itemCount: 20,
                  itemBuilder: (BuildContext context, int index) {
                    return courseCard("Hello World", () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const AboutCourse(),
                        ),
                      );
                    }, "Android Developement");
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
