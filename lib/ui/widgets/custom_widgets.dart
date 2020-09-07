import 'package:flutter/material.dart';

showLoadingDialog({var context, String text}) {
  showDialog(
      context: context,
      barrierDismissible: false,
      builder: (ct) => AlertDialog(
            content: Row(
              children: [
                CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(Colors.black),
                ),
                SizedBox(
                  width: 15,
                ),
                Text(text)
              ],
            ),
          ));
}

dissmissDialog(var context) {
  Navigator.of(context, rootNavigator: true).pop('dialog');
}

showSnackBarError({var key, String msg}) {
  key.currentState.showSnackBar(SnackBar(content: Text(msg)));
}
