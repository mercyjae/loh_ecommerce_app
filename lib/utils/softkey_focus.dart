import 'package:flutter/material.dart';

/// Hide the soft keyboard.
void hideKeyboard(BuildContext context) {
  FocusScope.of(context).requestFocus(FocusNode());
}
