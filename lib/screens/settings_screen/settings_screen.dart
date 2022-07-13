// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'widgets/add_button_widget.dart';
import 'widgets/buttons_widget.dart';
import 'widgets/clear_button_widget.dart';

class SettingsScreen extends StatelessWidget {
  final String? textChangeColumn;

  const SettingsScreen({Key? key, this.textChangeColumn}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AddButtonHogwartsWidget(
                  text: '+3',
                  onTap: () {},
                ),
                AddButtonHogwartsWidget(
                  text: '+5',
                  onTap: () {},
                ),
                AddButtonHogwartsWidget(
                  text: '+10',
                  onTap: () {},
                ),
                AddButtonHogwartsWidget(
                  text: '+15',
                  onTap: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClearButtonWidget(
                  text: '-3',
                  onTap: () {},
                ),
                ClearButtonWidget(
                  text: '-5',
                  onTap: () {},
                ),
                ClearButtonWidget(
                  text: '-10',
                  onTap: () {},
                ),
                ClearButtonWidget(
                  text: '-15',
                  onTap: () {},
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ButtonsWidget(
                  text: 'Pause',
                  color: Colors.red,
                  onTap: () {},
                ),
                ButtonsWidget(
                  text: 'Add',
                  color: Colors.blue,
                  onTap: () {},
                ),
                ButtonsWidget(
                  text: 'Reset',
                  color: Colors.yellow,
                  onTap: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
