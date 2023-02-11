import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class AboutCourse extends StatefulWidget {
  const AboutCourse({Key? key}) : super(key: key);

  @override
  State<AboutCourse> createState() => _AboutCourseState();
}

class _AboutCourseState extends State<AboutCourse> {
  final YoutubePlayerController _controller =
      YoutubePlayerController(initialVideoId: "UCo3KvUOtPnsijOhEcEf9nvg");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          YoutubePlayer(
            controller: _controller,
            liveUIColor: Colors.red,
            showVideoProgressIndicator: true,
          )
        ],
      ),
    );
  }
}
