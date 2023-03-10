import 'package:flutter/material.dart';

import '../../Widget/custom_appbar.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Contact Screen/Widget/contact.widget.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.customAppBarWithBack(title: "About"),

      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 32,),
            aboutScreen("ABOUT RISTAL UNIVERSITY",
                "Ristal University is a private nonprofit online academic institution in South Sudan established to provide quality and affordable higher education. Ristal Institute is the precursor for Ristal University, both academic institutions owned by Ristal Initiative-A national NGO registered in South Sudan. Ristal University is in the process of getting registered with the national ministry of higher education, science and technology. At the moment,the ministry intends to form a committee that will set the guidelines for registration and regulation of Online Universities in the country.  In the meantime, Ristal University offers its academic programs in collaboration with other accredited Universities."),
            aboutScreen("Vision",
                "Our vision is to become a globally recognized academic institution that uses technological innovations to create an engaging learning environment for students. Mission"),
            aboutScreen("Core values",
                "Ethics - conduct teaching and business in a manner that shows responsibility, respect and dignity Quality - Provide knowledge and skills using latest technologies to ensure quality education Collaboration - Work with national, regional and international partners to enhance the exchange of expertise Integrity - conduct activities in honest and fair manner"),
            aboutScreen("Objectives",
                "Offer an engaging learning environment using technology Provide clear learning objectives to enable students master the subject matter Provide clear assessment methods to promote motivation Conduct and disseminate research findings to improve the quality of living"),
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Divider(),
                  const Text("Address :", style: TextStyle(fontWeight: FontWeight.bold),),
                  const Text(
                    "Gurei block 2, close to Amule Nursery\nand Primary School.\nJuba-South Sudan",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget aboutScreen(String titleText, String subTitle) {
  return ListTile(
    title: Text.rich(
      textAlign: TextAlign.center,
      TextSpan(
        text: titleText,
        style: const TextStyle(fontFamily: 'Quicksand', color: Colors.green, fontSize: 28),
        /*children: <TextSpan>[

        ],*/
      ),
    ),
    subtitle: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32.0),
      child: Text.rich(
        textAlign: TextAlign.justify,
        TextSpan(
          text: subTitle,
          style: const TextStyle(
            fontFamily: 'Rubik',
            fontWeight: FontWeight.normal,
            color: Colors.black,
            fontSize: 15,
          ),
        ),
      ),
    ),
  );
}

Future<void> _launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    print("Could Not Launch $url");
  }
}