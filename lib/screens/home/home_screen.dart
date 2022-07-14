// Flutter imports:
import 'package:flutter/material.dart';

import 'widgets/column_time_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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
                ColumnTimeWidget(color: Colors.green),
                ColumnTimeWidget(color: Colors.blue),
                ColumnTimeWidget(color: Colors.red),
                ColumnTimeWidget(color: Colors.yellow),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
