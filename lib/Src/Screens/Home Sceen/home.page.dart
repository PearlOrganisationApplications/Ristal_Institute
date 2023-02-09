import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:ristal_institute/Src/Screens/Contact%20Screen/Widget/contact.widget.dart';
import 'package:ristal_institute/Src/Screens/Home%20Sceen/Widgets/home.page.widget.dart';
import 'package:ristal_institute/utils/Constant/constant.dart';
import 'package:url_launcher/url_launcher.dart';

import '../Contact Screen/contact.screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // List<String> courselImage = [
  //   "assets/images/Logo.PNG",
  //   "assets/images/pic1.jpg",
  //   "assets/images/pic2.jpg",
  //   "assets/images/pic1.jpg",
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        // automaticallyImplyLeading: false,
      ),
      drawer: Drawer(
        backgroundColor: Colors.black38,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 250,
              child: DrawerHeader(
                decoration: const BoxDecoration(color: AppColors.kPrimaryColor),
                child: firstlist("assets/images/Logo.PNG", "Sagar Bisht"),
              ),
            ),
            drawerList(
              "Home",
              () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const HomeScreen()));
              },
            ),
            drawerList(
              "Course",
              () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const HomeScreen()));
              },
            ),
            drawerList(
              "About",
              () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) => const HomeScreen()));
              },
            ),
            drawerList(
              "Contact",
              () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const ContactScreen()));
              },
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Connect With Us :",
                style: TextStyle(color: AppColors.kTitleColor),
              ),
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
                  child: socialMedia("assets/images/SM/instagram.png", () {
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
      body: LayoutBuilder(
        builder: (context, Constraints constraints) {
          return ListView(
            children: [
              CarouselSlider(
                items: [
                  //1st Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage(
                          "assets/images/Logo.PNG",
                        ),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),

                  //2nd Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/pic1.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //3rd Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/pic2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //4th Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/t1.jpeg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  //5th Image of Slider
                  Container(
                    margin: const EdgeInsets.all(6.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      image: const DecorationImage(
                        image: AssetImage("assets/images/t2.jpeg"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],

                //Slider Container properties
                options: CarouselOptions(
                  height: 350.0,
                  enlargeCenterPage: true,
                  autoPlay: true,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  viewportFraction: .9,
                ),
              ),
            ],
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
