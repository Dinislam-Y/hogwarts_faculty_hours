// Flutter imports:
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final String? text;
  final String? textChangeColumn;
  final Color? color;

  const SettingsScreen({
    Key? key,
    this.text,
    this.textChangeColumn,
    this.color,
  }) : super(key: key);

  static void show(BuildContext context) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(14),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (_) => const SettingsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                'Вносим изминения в $textChangeColumn столбце',
                style: const TextStyle(fontSize: 20),
              ),
            ),
            const Divider(thickness: 2),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _addButtonHogwarts('+3'),
                _addButtonHogwarts('+5'),
                _addButtonHogwarts('+10'),
                _addButtonHogwarts('+15'),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _remoteButtonHogwarts('-3'),
                _remoteButtonHogwarts('-5'),
                _remoteButtonHogwarts('-10'),
                _remoteButtonHogwarts('-15'),
              ],
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _buttonHogwarts('Pause', Colors.red),
                _buttonHogwarts('Add', Colors.blue),
                _buttonHogwarts('Reset', Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }

  _addButtonHogwarts(String text) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 40,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.green.withOpacity(0.2),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  _remoteButtonHogwarts(String text) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 40,
        width: 40,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.2),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }

  _buttonHogwarts(String text, Color color) {
    return InkWell(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 60,
        width: 60,
        margin: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: color.withOpacity(0.4),
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
        ),
      ),
    );
  }
}
