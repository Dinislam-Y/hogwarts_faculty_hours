// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'widgets/add_button_widget.dart';
import 'widgets/reduce_button_widget.dart';

class SettingsScreen extends StatelessWidget {
  final String title;
  final Function function;
  final Color color;

  const SettingsScreen({
    Key? key,
    required this.title,
    required this.function,
    required this.color,
  }) : super(key: key);

  static void show({
    required BuildContext context,
    required String titleShow,
    required Function function,
    required Color color,
  }) {
    showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(14),
        ),
      ),
      isScrollControlled: true,
      context: context,
      builder: (_) => SettingsScreen(
        title: titleShow,
        function: function,
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: RichText(
                text: TextSpan(
                  text: 'Вносим изминения ',
                  style: const TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                  children: [
                    TextSpan(
                      text: title,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: color,
                      ),
                    ),
                    const TextSpan(
                      text: " столбце",
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const Divider(thickness: 2),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AddButtonHogwartsWidget(
                  text: '+3',
                  onTap: () {
                    function(3);
                  },
                ),
                AddButtonHogwartsWidget(
                  text: '+5',
                  onTap: () {
                    function(5);
                  },
                ),
                AddButtonHogwartsWidget(
                  text: '+10',
                  onTap: () {
                    function(10);
                  },
                ),
                AddButtonHogwartsWidget(
                  text: '+15',
                  onTap: () {
                    function(15);
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ReduceButtonWidget(
                  text: '-3',
                  onTap: () {
                    function(-3);
                  },
                ),
                ReduceButtonWidget(
                  text: '-5',
                  onTap: () {
                    function(-5);
                  },
                ),
                ReduceButtonWidget(
                  text: '-10',
                  onTap: () {
                    function(-10);
                  },
                ),
                ReduceButtonWidget(
                  text: '-15',
                  onTap: () {
                    function(-15);
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
