import 'package:flutter/material.dart';

class EmailPage extends StatelessWidget {
  static const routeName = '/email-content';

  @override
  Widget build(BuildContext context) {
    final Map emailData = ModalRoute.of(context).settings.arguments;
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
          child: ListView(
            children: [
              Column(
                children: [
                  ListTile(
                    title: Text(
                      emailData['sender'],
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
                        emailData['sender'].substring(0, 1),
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                      decoration: BoxDecoration(
                        color: emailData['thumbnailColor'],
                        shape: BoxShape.circle,
                      ),
                    ),
                    title: Row(
                      children: [
                        Text(
                          emailData['sender'],
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
                              emailData['time'],
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
                  ),
                  Container(
                    width: 400,
                    height: 180,
                    margin: EdgeInsets.only(left: 20, right: 20, top: 15),
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/alexa.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                        top: 20, left: 20, right: 20, bottom: 14),
                    child: Text(
                      emailData['heading'],
                      style:
                          TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 20,
                      right: 20,
                    ),
                    child: Text(
                      emailData['textContent'],
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}
