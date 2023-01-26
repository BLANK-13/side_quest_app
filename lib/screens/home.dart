import 'package:flutter/material.dart';
import 'package:uni_events/screens/widgets/events_list.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.event),
              SizedBox(width: 10),
              Text('Side Quest App'),
            ],
          ),
        ),
        body: ListView.builder(
          itemCount: 20,
          itemBuilder: (BuildContext context, int index) {
            return EventCard(
              title: 'Python programming gathering',
              attendance: '12',
              time: 'Feb 13th',
            );
          },
        ));
  }
}
