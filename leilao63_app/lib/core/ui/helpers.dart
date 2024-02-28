import 'package:flutter/material.dart';
import 'package:leilao63_app/core/ui/constants.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

mixin Messages<T extends StatefulWidget> on State<T> {
  void showError(String message) {
    final overlay = Overlay.of(context);
    showTopSnackBar(
      overlay,
      CustomSnackBar.error(
        message: message,
        backgroundColor: ColorsConstants.red,
      ),
    );
  }

  void showInfo(String message) {
    final overlay = Overlay.of(context);
    showTopSnackBar(
      overlay,
      CustomSnackBar.error(
        message: message,
      ),
    );
  }

  void showSucces(String message) {
    final overlay = Overlay.of(context);
    showTopSnackBar(
      overlay,
      CustomSnackBar.error(
        message: message,
        backgroundColor: ColorsConstants.green,
      ),
    );
  }
}
