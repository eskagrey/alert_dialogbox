import 'package:flutter/material.dart';
import 'package:alert_dialogbox/alert_dialogbox.dart';

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
  const MyApp({Key? key}) : super(key: key);

  final String teksDialog = 'Hello, teks ini dari main, dan Alert ini adalah sebuah package';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tes package local'),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Show Alert Dialog'),
          onPressed: () {
            AlertDialogBox.showAlertDialogBox(
              context: context,
              konten: Text(teksDialog),
            );
          },
        ),
      ),
    );
  }
}