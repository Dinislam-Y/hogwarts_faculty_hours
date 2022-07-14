// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hogwarts_faculty_hours/screens/settings_screen/settings_screen.dart';

class RedColumnWidget extends StatelessWidget {
  final int intPoints = 3;

  const RedColumnWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          intPoints.toString(),
          style: const TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            SettingsScreen.show(
              context: context,
              titleShow: 'красном',
            );
          },
          child: Container(
            height: 300,
            width: 50,
            decoration: const BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: const SizedBox(
              height: 50,
              width: 50,
            ),
          ),
        ),
      ],
    );
  }
}
