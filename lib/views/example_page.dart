import 'package:factory_design_pattern/widgets/dialog_selection.dart';
import 'package:flutter/material.dart';

import '../models/android_alet_dialog.dart';
import '../models/custom_dialog.dart';
import '../models/ios_alert_dialog.dart';

class ExamplePage extends StatefulWidget {
  const ExamplePage({Key? key}) : super(key: key);

  @override
  State<ExamplePage> createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  final List<CustomDialog> customDialogs = [
    AndroidAlertDialog(),
    IosAlertDialog(),
  ];

  int _selectedIndex = 0;

  Future<void> _showCustomDialog() async {
    var selectedDialog = customDialogs[_selectedIndex];
    await selectedDialog.show(context);
  }

  void _setSelectedIndex(int index) {
    _selectedIndex = index;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DialogSelection(
              customDialogList: customDialogs,
              selectedIndex: _selectedIndex,
              onChanged: (value) => _setSelectedIndex(value!),
            ),
            TextButton(onPressed: () async {
              await _showCustomDialog();
            }, child: const Text('Show Dialog'))
          ],
        ),
      ),
    );
  }
}
