import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:uni_events/models/event_model.dart';
import 'package:uni_events/screens/login_page.dart';
import 'package:uni_events/screens/my_events.dart';
import 'package:http/http.dart' as http;

import '../screens/home.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  State<BottomBarWidget> createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  int currentP = 0;
  final List<Widget> pages = [HomePage(), MyEventsPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Theme.of(context).primaryColor,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.event),
            label: 'My Events',
          ),
        ],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey[600],
        showUnselectedLabels: true,
        currentIndex: currentP,
        onTap: (index) {
          setState(() {
            currentP = index;
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {},
        tooltip: 'Add Event',
        child: Icon(
          Icons.add,
          color: Theme.of(context).primaryColor,
        ),
      ),
      body: IndexedStack(
        index: currentP,
        children: pages,
      ),
    );
  }
}
