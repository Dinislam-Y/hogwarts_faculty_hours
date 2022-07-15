// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:percent_indicator/linear_percent_indicator.dart';

class LinearPercentIndicatorWidget extends StatelessWidget {
  final Color color;
  final int point;

  const LinearPercentIndicatorWidget({
    Key? key,
    required this.color,
    required this.point,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RotatedBox(
      quarterTurns: -1,
      child: LinearPercentIndicator(
        width: MediaQuery.of(context).size.width - 20,
        lineHeight: 50,
        progressColor: color,
        backgroundColor: color.withOpacity(0.2),
        barRadius: const Radius.circular(50),
        animation: true,
        animationDuration: 300,
        percent: point < 0 ? 0.0 : point / 100,
        animateFromLastPercent: true,
      ),
    );
  }
}
