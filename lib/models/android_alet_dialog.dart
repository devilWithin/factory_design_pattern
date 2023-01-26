import 'package:factory_design_pattern/models/custom_dialog.dart';
import 'package:flutter/material.dart';

class AndroidAlertDialog extends CustomDialog {

  @override
  Widget create(BuildContext context) {
    return AlertDialog(
      title: Text(
          getTitle(),
      ),
      content: const Text('This is the material-style alert dialog!'),
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
    return "Android Alert Dialog";
  }
}