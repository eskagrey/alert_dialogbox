library alert_dialogbox;

import 'package:flutter/material.dart';

class AlertDialogBox {
  static Future showAlertDialogBox({
    required BuildContext context,
    required Widget konten,
  }) {
    assert(context !=null, 'context is null');
    assert(konten !=null, 'konten is null');
    return showDialog(
      context: context,
      builder: (context){
        return AlertDialog(
          insetPadding: EdgeInsets.all(10.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))
          ),
          content: Padding(
            padding: EdgeInsets.only(
              left: 16.0,
              right: 16.0,
              top: 8.0,
              bottom: 8.0
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 10.0),
                konten,
                SizedBox(height: 30.0),
                ElevatedButton(
                  onPressed: () {Navigator.pop(context);}, 
                  child: const Text('Close'),
                )
              ],
            ),
          ),
          elevation: 12,
        );
    });
  }
}


