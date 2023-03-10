// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:url_launcher/url_launcher.dart';

import 'dart:async';

import 'package:flutter_email_sender/flutter_email_sender.dart';

import '../../Widget/custom_appbar.dart';
import 'Widget/contact.widget.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({Key? key}) : super(key: key);

  @override
  _ContactScreenState createState() => _ContactScreenState();
}

class _ContactScreenState extends State<ContactScreen> {
  List<String> attachments = [];
  bool isHTML = false;

  final _recipientController = TextEditingController(
    text: 'abc@abcd.com',
  );

  final _subjectController = TextEditingController(text: '');

  final _bodyController = TextEditingController(
    text: '',
  );

  Future<void> send() async {
    final Email email = Email(
      body: _bodyController.text,
      subject: _subjectController.text,
      recipients: [_recipientController.text],
      attachmentPaths: attachments,
      isHTML: isHTML,
    );

    String platformResponse;

    try {
      await FlutterEmailSender.send(email);
      platformResponse = 'success';
    } catch (error) {
      print(error);
      platformResponse = error.toString();
    }

    if (!mounted) return;

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(platformResponse),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: CustomAppBar.customAppBarWithBack(title: "Contact"),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,
                controller: _recipientController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Recipient',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
              child: TextField(
                autofocus: true,
                keyboardType: TextInputType.text,
                textInputAction: TextInputAction.next,
                controller: _subjectController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Subject',
                  hintText: "Write Subject here",
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 32.0),
                child: TextField(
                  keyboardType: TextInputType.text,
                  textInputAction: TextInputAction.done,
                  controller: _bodyController,
                  maxLines: null,
                  expands: true,
                  textAlignVertical: TextAlignVertical.top,
                  decoration: const InputDecoration(
                    fillColor: Colors.white,
                    filled: true,
                    contentPadding:
                    EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    hintText: "Write message here...",
                    hintStyle: TextStyle(
                      // color: AppColors.blueZodiac,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(12),
                      ),
                      borderSide: BorderSide(
                        width: 1.5,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(8),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            CheckboxListTile(
              contentPadding:
                  const EdgeInsets.symmetric(vertical: 0.0, horizontal: 32.0),
              title: const Text('HTML'),
              onChanged: (bool? value) {
                if (value != null) {
                  setState(() {
                    isHTML = value;
                  });
                }
              },
              value: isHTML,
            ),
            ElevatedButton(onPressed: send, style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white10,
              backgroundColor: Colors.green,
              minimumSize: const Size(90, 40),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),), child: const Text("Submit", style: TextStyle(color: Colors.white, fontSize: 18),),
            ),
            const Spacer(flex: 1,),
            Padding(
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
          ],
        ),
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
