// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:provider/provider.dart';

// Project imports:
import 'package:hogwarts_faculty_hours/screens/home/point_provider.dart';
import 'package:hogwarts_faculty_hours/screens/home/widgets/linear_percent_indicator_widget.dart';
import 'package:hogwarts_faculty_hours/screens/settings_screen/settings_screen.dart';

class ColumnPointWidget extends StatelessWidget {
  final Color color;
  final String titleShow;

  const ColumnPointWidget({
    Key? key,
    required this.color,
    required this.titleShow,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final pointWatch = context.watch<PointProvider>();
    final pointRead = context.read<PointProvider>();

    return Column(
      children: [
        Text(
          pointWatch.counterMap[color]!.toString(),
          style: const TextStyle(fontSize: 24),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            SettingsScreen.show(
              color: color,
              context: context,
              titleShow: titleShow,
              function: () => pointRead.incrementCounter(
                  pointWatch.counterMap[color]!, color),
            );
          },
          child: LinearPercentIndicatorWidget(
            color: color,
            point: pointWatch.counterMap[color]!,
          ),
        ),
        IconButton(
          onPressed: () {
            pointRead.clearItem(color);
          },
          icon: const Icon(Icons.delete_forever),
        ),
      ],
    );
  }
}
