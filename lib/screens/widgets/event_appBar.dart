import 'package:flutter/material.dart';

class EventsAppBarWidget extends StatelessWidget {
  final String image;
  const EventsAppBarWidget({Key? key, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return FlexibleSpaceBar(
        titlePadding: const EdgeInsets.only(bottom: 10),
        title: constraints.biggest.height <= 90
            ? Image.asset(
                'assets/app_bar.png',
                height: 40,
                width: 60,
              )
            : const SizedBox(),
        centerTitle: true,
        background: Image.asset(
          image,
          width: double.infinity,
          fit: BoxFit.fill,
        ),
      );
    });
  }
}
