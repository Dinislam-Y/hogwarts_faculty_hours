// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:simple_timer/simple_timer.dart';

// Project imports:
import 'widgets/column_time_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TimerController _timerController;

  @override
  void initState() {
    super.initState();
    _timerController = TimerController(this);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                ColumnTimeWidget(color: Colors.green, text: '15'),
                ColumnTimeWidget(color: Colors.blue, text: '25'),
                ColumnTimeWidget(color: Colors.red, text: '5'),
                ColumnTimeWidget(color: Colors.yellow, text: '35'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
