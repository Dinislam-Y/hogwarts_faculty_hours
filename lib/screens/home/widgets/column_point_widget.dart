// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:percent_indicator/linear_percent_indicator.dart';

// Project imports:
import 'package:hogwarts_faculty_hours/screens/settings_screen/settings_screen.dart';

class ColumnPointWidget extends StatefulWidget {
  final Color color;
  final String titleShow;

  const ColumnPointWidget({
    Key? key,
    required this.color,
    required this.titleShow,
  }) : super(key: key);

  @override
  State<ColumnPointWidget> createState() => _ColumnPointWidgetState();
}

class _ColumnPointWidgetState extends State<ColumnPointWidget> {
  int _counter = 0;

  incrementCounter(int value) {
    setState(() {
      _counter += value;
      if (_counter > 100) {
        _counter = 100;
      }
      if (_counter < -100) {
        _counter = -100;
      }
    });
  }

  clearItem() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          '$_counter',
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            SettingsScreen.show(
              color: widget.color,
              context: context,
              titleShow: widget.titleShow,
              function: incrementCounter,
            );
          },
          child: RotatedBox(
            quarterTurns: -1,
            child: LinearPercentIndicator(
              width: MediaQuery.of(context).size.width - 20,
              lineHeight: 50,
              progressColor: widget.color,
              backgroundColor: widget.color.withOpacity(0.2),
              barRadius: const Radius.circular(50),
              animation: true,
              animationDuration: 300,
              percent: _counter < 0 ? 0.0 : _counter / 100,
              animateFromLastPercent: true,
            ),
          ),
        ),
        IconButton(
          onPressed: () {
            clearItem();
          },
          icon: const Icon(Icons.delete_forever),
        ),
      ],
    );
  }
}
