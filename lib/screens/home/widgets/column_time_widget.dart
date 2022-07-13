// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hogwarts_faculty_hours/screens/settings_screen/settings_screen.dart';

class ColumnTimeWidget extends StatelessWidget {
  final Color color;
  final String text;

  const ColumnTimeWidget({
    Key? key,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          text,
          style: const TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            SettingsScreen.show(context);
          },
          child: Container(
            height: 300,
            width: 50,
            decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(
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
