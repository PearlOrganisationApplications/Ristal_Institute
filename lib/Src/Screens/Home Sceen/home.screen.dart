import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'package:ristal_institute/Src/Screens/AboutScreen/about.screen.dart';

import 'package:ristal_institute/Src/Screens/Contact%20Screen/Widget/contact.widget.dart';
import 'package:ristal_institute/Src/Screens/Home%20Sceen/Widgets/home.page.widget.dart';
import 'package:ristal_institute/Src/Screens/Profile/profile.screen.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../Widget/custom_appbar.dart';
import '../Contact Screen/contact.screen.dart';
import '../Course/course.type.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  final String userName = "Anurag";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.customAppBarWithMenuButton(title: "Ristal University"),
      drawer: Drawer(
        width: MediaQuery.of(context).size.width * 0.8,
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 250,
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ProfileScreen()));
                },
                child: DrawerHeader(
                  decoration:
                      const BoxDecoration(//color: AppColors.kPrimaryColor
                        color: Colors.green,
                         ),
                  child: drawerHeader("assets/icons/profile_pic.png", "Robert Smith"),
                ),
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
                "assets/icons/home.png"
            ),
            drawerList(
              "Profile", () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfileScreen()));
              },
                "assets/icons/profile.png"
            ),
            drawerList(
              "Courses",
                  () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => const CourseType(),
                  ),
                );
              },
                "assets/icons/courses.png"

            ),
            drawerList(
              "About",
              () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (BuildContext context) =>
                            const AboutScreen()));
              },
                "assets/icons/about.png"

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
                "assets/icons/support.png"

            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Connect With Us :",
                style: TextStyle(color: Colors.black),
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
      body: SafeArea(
        child: LayoutBuilder(
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
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: .9,
                  ),
                ),
                homeScreen(
                    "Texila American University Partnership with Ristal Institute\n\n",
                    "Ristal Institute is delighted to announce a partnership with Texila American University. The partnership is aimed at enabling prospective students in South Sudan to enroll in any Texila American University???s online undergraduate, master, and Ph.D. programs without paying application and admission processing fees when they apply through Ristal Institute.Texila American University is a global provider of online and blended educational programs with campuses in Guyana and Zambia. To get more information about the programs and tuition structuree"),
                homeScreen(
                    "Academic Collaboration with Nexus International University\n\n",
                    "Nexus International University and Ristal Initiative signed a partnership agreement that enables South Sudanese students to enroll in affordable online programs at Nexus International University. Nexus International University is an online University registered in Uganda and is accredited by the Uganda National Council for Higher Education. The programs include; a master of public health and a postgraduate diploma in public health. The Master of Public Health course is an online two-year program consisting of ten modules. Students shall pay \$250 per module. There are three terms in the academic year, in each term, students shall be enrolled in two modules. Ristal Initiative is a national NGO registered in South Sudan that owns Ristal Institute-an online academic institute in South Sudan. Ristal Initiative will facilitate the enrollment of students into this program in South Sudan. Additionally, Students who enroll through Ristal Initiative shall enjoy discounted tuition fees of \$250 per module. Students shall also be required to pay \$ 400 as dissertation fees. Upon successful completion of this program shall receive Nexus International University transcripts and certificates. Students enrolled into the program shall use Akili, the learning management system used by Nexus International University to access learning resources. Students with internet limitations can opt to sit for physical exams at the Ristal Initiative coordination offices in Gurei, Juba-South Sudan. In this program, students do not need to cross the border to study or do exams."),
                homeScreen(
                    "Academic Affiliation with Jamus International University College\n\n",
                    "Ristal Institute is affiliated to Jamus International University College, through this affiliation, we are able to expand access to affordable and quality online undergraduate programs in South Sudan. Jamus International University College is a private university registered by the national ministry of higher education, science and technology-South Sudan and is located in Juba Town, Jamus Insurance plaza."),
                homeScreen("Online Undergraduate Programs\n\n",
                    "Ristal Institute is delighted to announce academic collaboration with Exeed College. Exeed College is a leading school located in the United Arabs Emirates and is part of Westford Education Group - a global provider of accredited international education. This collaboration will allow South Sudanese access to the Master of Business Administration program from the UK, Doctorate in Management from Spain, Bachelor in business management from France, and Masters/Doctorate in Education programs from the US through Ristal Institute. In addition, short-term IT Programs of 6 months to 1 Year duration will be provided from US University extension through Ristal Institute. As a study center, Ristal Institute will be involved in the coordination of the program in South Sudan.  Graduates of the blended program will receive their Graduation certificates from the Universities directly and from International Education Bodies."),
              ],
            );
          },
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
