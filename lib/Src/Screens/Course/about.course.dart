import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

import '../../Widget/custom_appbar.dart';

class AboutCourse extends StatefulWidget {
  final String title;
  final String videoId;
  const AboutCourse({Key? key, required this.title, required this.videoId}) : super(key: key);

  @override
  State<AboutCourse> createState() => _AboutCourseState();
}

class _AboutCourseState extends State<AboutCourse> {
  late final YoutubePlayerController _controller;

  @override
  initState() {
    super.initState();

    _controller = YoutubePlayerController(
        initialVideoId: widget.videoId,
        flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
    )
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar.customAppBarWithBack(title: widget.title),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            YoutubePlayer(
              // onReady: _controller.addListener(() {}),

              controller: _controller,
              liveUIColor: Colors.red,
              showVideoProgressIndicator: true,
            ),
            _courseTitle(
              "Application Developement Course\n\n",
              "Course Description\n\n",
              "South Sudan is facing challenges related to shortage of adequately skilled human resources for health. This shortage is extreme in population reproductive health.  yet, there are significant reproductive health challenges related to prolonged civil conflicts in the country. These challenges pose a great negative impact on reproduction and economic development. Currently, health professionals from different health related disciplines provide reproductive health services in different settings are often constrained by inadequate specialized skills to be able to provide holistic reproductive care to individuals and communities. There is a need to train professionals using innovative teaching approaches. This online program therefore is intended to train professionals who intend to further their knowledge and skills in population and reproductive health.\n\n",
              "Modules\n\n",
              "Academic and Communication Skills Professional Ethics and Integrity Critical and creative thinking\n\n",
              "Duration of Course\n\n",
              "3 Years\n\n",
              "Fees\n\n",
              "\$300\n\n",
              "Mode of Delivery\n\n",
              "Online\n\n",
              "Application Process\n\n",
              "Eligible students should fill the form here or send their academic documents to admissions@ristalinstitute.org\n\n",
              "Intake\n\n",
              "Ongoin\n\n",
            ),
          ],
        ),
      ),
    );
  }
}

Widget _courseTitle(
  String title,
  String subject,
  String subjectPara,
  String moduletitle,
  String modulePara,
  String durationtitletext,
  String durationPara,
  String feestitletext,
  String feesPara,
  String modeofdelivrytitleText,
  String modeofdelivryPara,
  String applicationprocesstitleText,
  String applicationPara,
  String intaketitleText,
  String intakePara,
) {
  return Column(
    children: [
      ListTile(
        title: Text(
          title,
          style: const TextStyle(fontSize: 35),
        ),
        subtitle: RichText(
          text: TextSpan(
            text: subject,
            style: const TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 25),
            children: <TextSpan>[
              TextSpan(
                text: subjectPara,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              TextSpan(
                text: moduletitle,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              TextSpan(
                text: modulePara,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              TextSpan(
                text: durationtitletext,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              TextSpan(
                text: durationPara,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              TextSpan(
                text: feestitletext,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              TextSpan(
                text: feesPara,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              TextSpan(
                text: modeofdelivrytitleText,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              TextSpan(
                text: modeofdelivryPara,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              TextSpan(
                text: applicationprocesstitleText,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              TextSpan(
                text: applicationPara,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
              TextSpan(
                text: intaketitleText,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
              TextSpan(
                text: intakePara,
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w300,
                    fontSize: 15),
              ),
            ],
          ),
        ),
      ),
    ],
  );
}
