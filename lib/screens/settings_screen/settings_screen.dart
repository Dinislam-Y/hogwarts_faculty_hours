// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'widgets/add_button_widget.dart';
import 'widgets/reduce_button_widget.dart';

class SettingsScreen extends StatelessWidget {
  final String title;
  final Function function;

  const SettingsScreen({
    Key? key,
    required this.title,
    required this.function,
  }) : super(key: key);

  static void show({
    required BuildContext context,
    required String titleShow,
    required Function function,
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
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FittedBox(
              child: Text(
                'Вносим изминения в "$title" столбце',
                style: const TextStyle(fontSize: 20),
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
