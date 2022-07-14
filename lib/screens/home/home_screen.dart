// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:hogwarts_faculty_hours/screens/home/widgets/blue_column_widget.dart';
import 'package:hogwarts_faculty_hours/screens/home/widgets/green_column_widget.dart';
import 'package:hogwarts_faculty_hours/screens/home/widgets/red_column_widget.dart';
import 'package:hogwarts_faculty_hours/screens/home/widgets/yellow_column_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                GreenColumnWidget(),
                BlueColumnWidget(),
                RedColumnWidget(),
                YellowColumnWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
