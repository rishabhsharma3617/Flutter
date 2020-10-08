import 'package:flutter/material.dart';
import '../models/emails.dart';
import '../screens/emailContentScreen.dart';

class ListItem extends StatelessWidget {
  String sender;
  String title;
  String heading;
  String textContent;
  String time;
  String date;
  Color thumbnailColor;

  String fillDorT;

  ListItem(this.sender, this.title, this.heading, this.textContent, this.time,
      this.date, this.thumbnailColor);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(bottom: 0),
        child: Column(
          children: [
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => EmailPage(sender, title, heading,
                          textContent, time, date, thumbnailColor)),
                );
              },
              leading: Container(
                width: 49,
                height: 46,
                margin: EdgeInsets.only(top: 0),
                child: Center(
                    child: Text(
                  sender.substring(0, 1),
                  style: TextStyle(fontSize: 30, color: Colors.white),
                )),
                decoration: BoxDecoration(
                  color: thumbnailColor,
                  shape: BoxShape.circle,
                ),
              ),
              title: Row(
                children: [
                  Text(
                    sender,
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  Spacer(),
                ],
              ),
              subtitle: Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontSize: 15.2,
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  ),
                  Text(
                    textContent,
                    style: TextStyle(fontSize: 15.2),
                    overflow: TextOverflow.ellipsis,
                    softWrap: false,
                  )
                ],
              ),
              trailing: Column(children: [
                if (time == '')
                  Text(
                    date,
                    style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 99, 147, 237),
                        fontWeight: FontWeight.bold),
                  )
                else
                  Text(
                    time,
                    style: TextStyle(
                        fontSize: 13,
                        color: Color.fromARGB(255, 99, 147, 237),
                        fontWeight: FontWeight.bold),
                  ),
                Container(
                  margin: EdgeInsets.only(top: 10),
                  child: Icon(
                    Icons.star_border,
                    size: 29,
                  ),
                )
              ]),
              isThreeLine: true,
            ),
            Divider(
              height: 3,
              thickness: 0.5,
              endIndent: 0,
            ),
          ],
        ));
  }
}
