import 'package:flutter/material.dart';

import '../../settings_screen/settings_screen.dart';

class ColumnTimeWidget extends StatefulWidget {
  final Color color;

  const ColumnTimeWidget({
    Key? key,
    required this.color,
  }) : super(key: key);

  @override
  State<ColumnTimeWidget> createState() => _ColumnTimeWidgetState();
}

class _ColumnTimeWidgetState extends State<ColumnTimeWidget> {
  int _counter = 0;

  // int _selectIndex = 0;
  //
  // List<String> title = [
  //   'зеленом',
  //   'синем',
  //   'красном',
  //   'желтом',
  // ];
  //
  // @override
  // void initState() {
  //   super.initState();
  //   onItemTapped(_selectIndex);
  // }
  //
  // onItemTapped(int value) {
  //   setState(() {
  //     _selectIndex = value;
  //   });
  // }
  //
  // buildCurrent(int type) {
  //   if (_selectIndex == 0) return title[0];
  //   if (_selectIndex == 1) return title[1];
  //   if (_selectIndex == 2) return title[2];
  //   if (_selectIndex == 3) return title[3];
  // }

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
          style: const TextStyle(fontSize: 30),
        ),
        const SizedBox(height: 10),
        GestureDetector(
          onTap: () {
            SettingsScreen.show(
              context: context,
              titleShow: '',
              function: incrementCounter,
            );
          },
          child: Container(
            height: 300,
            width: 50,
            decoration: BoxDecoration(
              color: widget.color,
              borderRadius: const BorderRadius.all(
                Radius.circular(40),
              ),
            ),
            child: const SizedBox(
              height: 50,
              width: 50,
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
