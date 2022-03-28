<!-- 
This README describes the package. If you publish this package to pub.dev,
this README's contents appear on the landing page for your package.

For information about how to write a good package README, see the guide for
[writing package pages](https://dart.dev/guides/libraries/writing-package-pages). 

For general information about developing packages, see the Dart guide for
[creating packages](https://dart.dev/guides/libraries/create-library-packages)
and the Flutter guide for
[developing packages and plugins](https://flutter.dev/developing-packages). 
-->

plugin to create a simple alert

## Features

To use this plugin, add ```alert_dialogbox``` as a [dependency in your pubspec.yaml](https://flutter.io/platform-plugins/).


## Usage
```dart
import 'package:alert_dialogbox/alert_dialogbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Dialog Box'),
      ),
      body: Center(
        child: RaisedButton(
          child: Text('Show Alert Dialog'),
          onPressed: () {
            FancyAlertDialog.showFancyAlertDialog(
              context,
              'Alert Dialog Box',
              'This is a info alert dialog box. This plugin is used to help you easily create dialog',
              Colors.red,
              icon: Icon(
                Icons.clear,
                color: Colors.white,
              ),
              labelPositiveButton: 'OK',
              onTapPositiveButton: () {
                Navigator.pop(context);
                print('tap positive button');
              },
              labelNegativeButton: 'Cancel',
              onTapNegativeButton: () {
                Navigator.pop(context);
                print('tap negative button');
              },
            );
          },
        ),
      ),
    );
  }
}
```
