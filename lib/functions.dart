import 'package:aumet_welcome_dialog/features/view/welcome_dialog.dart';
import 'package:flutter/material.dart';

// Function to open a dialog
void openDialog(BuildContext context, String title, String content) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return WelcomePage();
    },
  );
}
