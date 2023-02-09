import 'package:flutter/material.dart';
import 'package:ristal_institute/Src/Screens/Home%20Sceen/home.page.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Widget/contact.widget.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  State<ContactScreen> createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon:
              const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Contact"),
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, constrains) {
          return Container(
            height: constrains.maxHeight,
            width: constrains.maxWidth,
            child: Padding(
              padding: const EdgeInsets.only(left: 50.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text("Contact Us"),
                  const Text(
                      "Location: Gurei block 2, close to Amule Nursery\nand Primary School.\nJuba-South Sudan"),
                  InkWell(
                    onTap: () {
                      const url = "mailto:info@ristalinstitute.org";
                      _launchURL(url);
                    },
                    child: const Text("Email:info@ristalinstitute.org"),
                  ),
                  InkWell(
                    onTap: () {
                      const uri = "tel:+211924562907";
                      _launchURL(uri);
                    },
                    child: const Text("Phone: +211924562907 and +211918168498"),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: socialMedia("assets/images/SM/facebook.png", () {
                          const uri =
                              "https://www.facebook.com/people/Ristal-Institute-Juba/100086212587569/";
                          _launchURL(uri);
                          print("Facebook");
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child:
                            socialMedia("assets/images/SM/instagram.png", () {
                          const uri = "https://ristaluniversity.org/";
                          _launchURL(uri);
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: socialMedia("assets/images/SM/youtube.png", () {
                          const uri = "https://ristaluniversity.org/";
                          _launchURL(uri);
                        }),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: socialMedia("assets/images/SM/twitter.png", () {
                          const uri = "https://twitter.com/RistalInstitute";
                          _launchURL(uri);
                        }),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

Future<void> _launchURL(String url) async {
  if (await canLaunchUrl(Uri.parse(url))) {
    await launchUrl(Uri.parse(url));
  } else {
    print("Could Not Launch $url");
  }
}
