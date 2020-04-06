import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:progress_dialog/progress_dialog.dart';

class ProgressDialogUtil {

  BuildContext context;

  ProgressDialogUtil({this.context});

  ProgressDialog buildProgressDialog(String message) {
    ProgressDialog progressDialog = new ProgressDialog(context,
        type: ProgressDialogType.Normal, isDismissible: false, showLogs: false);
    progressDialog.style(
      message: message,
      progressWidget: SpinKitFadingCube(color: Colors.green[800]),
    );
    return progressDialog;
  }
}
