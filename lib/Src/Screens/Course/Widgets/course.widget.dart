import 'package:flutter/material.dart';

Widget courseCard(String title, VoidCallback onTap, String courseTile) {
  return Padding(
    padding: const EdgeInsets.only(top: 2.0),
    child: Card(
      child: Column(children: [
        ExpansionTile(
          title: Text(title),
          children: <Widget>[
            ListView.builder(
                itemCount: 10,
                shrinkWrap: true,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: ListTile(
                        onTap: onTap,
                        title: Text(courseTile),
                      ),
                    ),
                  );
                })
          ],
        ),
      ]),
    ),
  );
}

// class CourseDropDown extends StatefulWidget {
//   const CourseDropDown({Key? key}) : super(key: key);
//
//   @override
//   State<CourseDropDown> createState() => _CourseDropDownState();
// }
// String _dropDownValue;
//
// class _CourseDropDownState extends State<CourseDropDown> {
//   @override
//   Widget build(BuildContext context) {
//     return  DropdownButton(hint: _dropDownValue == null? Text("DropDrown"):,onChanged: (value) {  },);
//   }
// }
