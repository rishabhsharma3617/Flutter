import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget {
  String sender;
  String title;
  String heading;
  String textContent;
  String time;
  String date;
  Color thumbnailColor;

  EmailPage(this.sender, this.title, this.heading, this.textContent, this.time,
      this.date, this.thumbnailColor);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 203, 79, 65),
          leading: IconButton(
            icon: Icon(Icons.arrow_back, color: Colors.white),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: [
            IconButton(
                icon: Icon(
                  Icons.archive,
                  size: 28,
                ),
                onPressed: () {
                  print('search');
                }),
            IconButton(
                icon: Icon(
                  Icons.delete,
                  size: 28,
                ),
                onPressed: () {
                  print('search');
                }),
            IconButton(
                icon: Icon(
                  Icons.email,
                  size: 28,
                ),
                onPressed: () {
                  print('search');
                }),
            IconButton(
                icon: Icon(
                  Icons.more_vert,
                  size: 28,
                ),
                onPressed: () {
                  print('search');
                })
          ],
        ),
        body: Container(
          margin: EdgeInsets.only(top: 14),
          child: Column(
            children: [
              Column(
                children: [
                  ListTile(
                    title: Text(
                      title,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                      strutStyle: StrutStyle(height: 1.6, fontSize: 18),
                    ),
                    trailing: Container(
                      margin: EdgeInsets.only(top: 20),
                      child: Icon(
                        Icons.star_border,
                        size: 26,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                      margin: EdgeInsets.only(left: 20, top: 3),
                      width: 50,
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 200, 200, 200),
                          borderRadius: BorderRadius.circular(1.3)),
                      child: Center(
                        child: Text('Inbox'),
                      ),
                    ),
                  ),
                  Divider(
                    height: 40,
                    thickness: 0.5,
                    endIndent: 0,
                  ),
                  ListTile(
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
                          style: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold),
                        ),
                        Spacer(),
                      ],
                    ),
                    subtitle: Column(
                      children: [
                        Align(
                          alignment: Alignment.bottomLeft,
                          child: Container(
                            child: Text(
                              'to me',
                              style: TextStyle(
                                  fontSize: 15.2, fontWeight: FontWeight.w400),
                            ),
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              '$time',
                              style: TextStyle(
                                  fontSize: 15.2, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              ' View Details',
                              style: TextStyle(
                                  fontSize: 15.2,
                                  fontWeight: FontWeight.w500,
                                  color: Color.fromARGB(255, 99, 147, 237)),
                            )
                          ],
                        )
                      ],
                    ),
                    trailing: Container(
                      margin: EdgeInsets.only(top: 0),
                      child: Wrap(
                        spacing: 20,
                        children: [
                          Icon(
                            Icons.reply,
                            size: 30,
                          ), // icon-1
                          Icon(
                            Icons.more_vert,
                            size: 30,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 26),
                    child: Wrap(
                      children: [
                        Text(
                          'To view this email as a web page,',
                          style: TextStyle(
                              fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                        Text(
                          'click here',
                          style: TextStyle(
                              fontSize: 13,
                              fontWeight: FontWeight.w500,
                              color: Color.fromARGB(255, 99, 147, 237)),
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
