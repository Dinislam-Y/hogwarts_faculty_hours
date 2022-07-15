// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'widgets/column_point_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                ColumnPointWidget(color: Colors.green, titleShow: 'зеленом'),
                ColumnPointWidget(color: Colors.blue, titleShow: 'синем'),
                ColumnPointWidget(color: Colors.red, titleShow: 'красном'),
                ColumnPointWidget(color: Colors.yellow, titleShow: 'желтом'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
