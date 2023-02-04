import 'dart:math';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:uni_events/widgets/event_appBar.dart';

import '../constants/constants.dart';

class EventPage extends StatelessWidget {
  //final NewsModel news;
  //const EventPage({Key? key, required this.news}) : super(key: key);

  // String get formatDate =>
  //     DateFormat('dd MMMM yyyy', translator.activeLanguageCode)
  //         .format(DateTime.parse(news.createdAt));
  final Random random = Random();
  String title;
  String description;
  String date;

  EventPage(
      {required this.title, required this.description, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Theme.of(context).primaryColor,
            leading: IconButton(
                icon: const Icon(Icons.arrow_back_ios_rounded),
                onPressed: () {
                  Navigator.pop(context);
                }),
            pinned: true,
            snap: false,
            floating: true,
            expandedHeight: 250,
            flexibleSpace: EventsAppBarWidget(
                image: 'assets/card_${random.nextInt(11)}.png'),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                Text(
                  date,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF6A6666),
                  ),
                ),
                const SizedBox(height: 10),
                const SizedBox(height: 10),
                Text(
                  description * 100,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF131314),
                  ),
                ),
                const SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).primaryColor,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: const Text(
                    "I'm Going !",
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onPressed: () {},
                ),
              ]),
            ),
          ),

          //InkWell()  makes any widget clickable
          // IMAGE HERE

          // Space

          // title text

          // space

          // mini description text

          // space

          // date

          //space

          // content
        ],
      ),
    );
  }
}
