import 'package:flutter/material.dart';

import '../models/emails.dart';
import '../widgets/listItem.dart';

class InboxScreen extends StatelessWidget {
  List<Email> emails;
  InboxScreen(this.emails);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 203, 79, 65),
        centerTitle: false,
        title: const Text(
          'Unread',
          style: TextStyle(fontSize: 24),
        ),
        leading: IconButton(
          icon: Icon(
            Icons.menu,
            size: 35,
          ), // set your color here

          onPressed: () {},
        ),
        actions: [
          IconButton(
              icon: Icon(
                Icons.search,
                size: 28,
              ),
              onPressed: () {
                print('search');
              })
        ],
      ),
      body: ListView(
        children: [
          ...emails
              .map((email) => ListItem(
                  email.getSender,
                  email.getTitle,
                  email.getHeading,
                  email.getTextContent,
                  email.getTime,
                  email.getDate,
                  email.getThumbNailColor))
              .toList()
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color.fromARGB(255, 203, 79, 64),
        tooltip: 'Increment Counter', //heu
        child: const Icon(
          Icons.edit,
          size: 25,
          color: Colors.white,
        ),
      ),
    );
  }
}
