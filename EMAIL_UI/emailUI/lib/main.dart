import 'package:flutter/material.dart';
import './screens/inboxScreen.dart';
import './models/emails.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  final Emails emailsInstance = new Emails.initializeEmails();
  List<Email> emails;
  MyApp() {
    emails = emailsInstance.getEmails;
    print(emails);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: InboxScreen(emails),
    );
  }
}
