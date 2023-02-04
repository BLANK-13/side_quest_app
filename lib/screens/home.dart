import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uni_events/models/event_model.dart';
import 'package:uni_events/screens/event_page.dart';
import 'package:uni_events/widgets/events_list.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String getFormatted(date) {
    return DateFormat('dd MMMM').format(DateTime.parse(date));
  }

  static Future<List<Event>> getEvents() async {
    var url =
        'https://sidequest-laravel-api-2023-production.up.railway.app/events';
    try {
      final response = await http.get(Uri.parse(url));
      final List body = json.decode(response.body);
      return body.map<Event>(Event.fromJson).toList();
    } catch (_) {
      return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).primaryColor,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset(
                'assets/app_bar.png',
                height: 70,
                width: 90,
              ),
            ],
          ),
        ),
        body: FutureBuilder(
          future: getEvents(),
          builder: (context, snapshot) {
            if (ConnectionState.active != null && !snapshot.hasData) {
              return Center(
                  child: CircularProgressIndicator(
                      color: Theme.of(context).primaryColor));
            }

            return ListView.builder(
              itemCount: snapshot.data!.length,
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  child: EventCard(
                    title: snapshot.data![index].title,
                    category: snapshot.data![index].category,
                    time: getFormatted(snapshot.data![index].dateTime),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EventPage(
                                title: snapshot.data![index].title,
                                description: snapshot.data![index].title,
                                date: getFormatted(
                                    snapshot.data![index].dateTime),
                              )),
                    );
                  },
                );
              },
            );
          },
        ));
  }
}
