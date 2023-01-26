import 'package:factory_design_pattern/models/custom_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IosAlertDialog extends CustomDialog {
  @override
  Widget create(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(
        getTitle(),
      ),
      content: const Text('This is the cupertino-style alert dialog!'),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }

  @override
  String getTitle() {
    return "Cupertino Alert Dialog";
  }
}