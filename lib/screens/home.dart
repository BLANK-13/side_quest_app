import 'package:flutter/material.dart';
import 'package:uni_events/screens/event_page.dart';
import 'package:uni_events/screens/widgets/events_list.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/app_bar.png',
                height: 70,
                width: 90,
              ),
            ],
          ),
        ),
        body: ListView.builder(
          cacheExtent: 20,
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              child: EventCard(
                title: 'تجمع برمجةبالبايثون',
                attendance: '12',
                time: 'Feb 13th',
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EventPage()),
                );
              },
            );
          },
        ));
  }
}
