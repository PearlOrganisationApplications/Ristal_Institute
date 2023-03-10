import 'package:flutter/material.dart';

import '../about.course.dart';
import '../detail.course.dart';


Widget courseDetailCard(BuildContext context, List<String> headingArr, List<String> subHeadingArr, List<String> videoLinkArr/*VoidCallback onTap, String heading, String subHeading*/){
  return ListView.builder(
      itemCount: headingArr.length,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => AboutCourse(title: headingArr[index], videoId: videoLinkArr[index],),
                ),
              );
            },
            child: Card(
              color: Colors.white,
              elevation: 2,
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 70,
                      width: 80,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),

                          child: Image.asset("assets/icons/film.png", fit: BoxFit.fill)),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(headingArr[index], style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500, ), textAlign: TextAlign.left,),
                        Text(subHeadingArr[index],   style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w300,), textAlign: TextAlign.left,),

                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Container(
                        height: 40,
                        width: 40,
                        child: Image.asset("assets/icons/play_button.png",),
                        //IconButton( onPressed: () {}, icon: Image.asset("assets/icons/play_button.png",),)
                    ),
                  ),
                ],
              )
              /*ListTile(
                //onTap: onTap,
                leading: Image.asset("assets/icons/film.png"),
                title: Container(
                  color: Colors.deepPurpleAccent,
                    child: Text(heading, style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w300, ), textAlign: TextAlign.left,)
                ),
                subtitle: Text(subHeading+"fgjfgjk dssdkjdjfks kdfggj",   style: TextStyle(color: Colors.black54, fontSize: 20, fontWeight: FontWeight.w300,), textAlign: TextAlign.left,),
                trailing: IconButton( onPressed: onTap, icon: Image.asset("assets/icons/play_button.png", height: 30, width: 30,),)
              ),*/
            ),
          ),
        );
      });
}

Widget courseCard(BuildContext context, VoidCallback onTap, courseImage, courseInstructorName, courseName) {
  return Container(
    width: MediaQuery.of(context).size.width*0.8,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: Column(
        children: [
          Spacer(flex: 1),
          Column(
            children: [
              Stack(
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: Card(
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16),),
                        elevation: 20.0 ,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Image.asset(courseImage, fit: BoxFit.fill,),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 30,
                        left: 30,
                        child: InkWell(
                          onTap: () {

                          },
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(8.0)),
                                color: Colors.white
                            ),
                            height: 40,
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0, top: 8.0, bottom: 8.0,),
                                  child: Image.asset("assets/icons/star.png", height: 30, width: 30),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 8.0, bottom: 8.0, right: 12.0, left: 4.0),
                                  child: Text("4.8", style: TextStyle(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),),
                                ),
                              ],
                            ),
                          ),
                        )
                    ),

                    /*Positioned(
                top: 30,
                right: 30,
                child: InkWell(
                  onTap: () {

                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset("assets/icons/heart.png", height: 22, width: 22,),
                    ),
                  ),
                )
            )*/
                  ]
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0, left: 12.0),
                child: Container(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(courseName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                        Row(
                          children: [
                            Image.asset("assets/icons/contact.png", height: 20, width: 20,),
                            Text(courseInstructorName, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18, color: Colors.black54),),
                          ],
                        )
                      ],
                    )
                ),
              ),
            ],
          ),
          Spacer(flex: 1),
        ],
      ),
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
