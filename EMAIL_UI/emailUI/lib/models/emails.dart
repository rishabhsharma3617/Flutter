import 'package:flutter/material.dart';

class Emails {
  List<Email> _emails;

  Emails.initializeEmails() {
    _emails = List<Email>();
    //1
    _emails.add(Email(
        'Amazon Alexa Team',
        '[REMINDER] This October,Build Alexa SKills and Earn Sony PlayStation 4',
        'Hurry! Only a few days left over for the Alexa Developer Festive Offer',
        'Publish a Skill in October and geta limited-edition Alexa Developer t-shirt.Continue to publish 3 or more skills this month and you  will receive an Echo Dot in addition to the t-shirt',
        '10:57 AM',
        'Oct 22',
        Color.fromARGB(255, 148, 164, 173)));
    //2
    _emails.add(Email(
        'Angel Broking',
        'Trade at Flat Brokerage Rs.20. This is the bes time',
        'Hurry! Only a few days left over for trading at Angel Broking',
        'Publish a Skill in October and get a limited-edition Alexa Developer t-shirt.Continue to publish 3 or more skills this month and you  will receive an Echo Dot in addition to the t-shirt',
        '9:00 AM',
        'Oct 22',
        Color.fromARGB(255, 123, 136, 197)));

    //3
    _emails.add(Email(
        'Robin Sharma',
        'Join the Hope Brigade with people that are like you',
        'Hurry! Only a few seats left for the amazing self-help workshop',
        'Hi Rishabh,I wrote a piece that I thought would help keep you positive, grounded, focused and productive.Yes, there’s much uncertainty in business and society right now. I believe the wisest thing you can do is block out a lot of the noise, use this time to strengthen your self and just do what you can do to bring more value to other people.',
        '6:00 AM',
        'Oct 22',
        Color.fromARGB(255, 148, 164, 173)));

    //4
    _emails.add(Email(
        'Chitkara Univeristy',
        'Test Invitation | Chitkara University | ETE-July-Dec-2020-NS-CSL5411-SET B',
        'Hurry! Only two hours left for you to take this test',
        'You are invited to be a prt of final semester test which is being conducted by the Chitkara Univeristy , so we kindly expect your presence for the test and the marks will be uploaded to chalkpad itself',
        '3:00 AM',
        'Oct 22',
        Color.fromARGB(255, 157, 137, 127)));

    //5
    _emails.add(Email(
        'MongoDB',
        'Tell us what you think about MongoDB Atlas',
        'Welcome to !MongoDB',
        'Hi RISHABH, We noticed that you recently signed up for Atlas, welcome!It looks like you\'ve completed the necessary steps to create a Production-Ready Instance.Do you have 2 minutes to complete this survey on what\'s holding you back from upgrading to a customized cluster?',
        '',
        'Oct 22',
        Color.fromARGB(255, 243, 170, 71)));

    //6
    _emails.add(Email(
        'Dream11 Cricket',
        'Rs.50 Crores in winnings every day and you deserve this',
        'Hurry! make your dream team and win lots of fortune',
        'Rs. 50 Crore in Winnings Every Day on Dream11 . Register & select Your Cricket Match Make your team and Start Winning',
        '',
        'Oct 22',
        Color.fromARGB(255, 112, 184, 142)));

    //7
    _emails.add(Email(
        'AngelList',
        'Twitter will add voice tweet trans follo criticism over accessibility',
        'Hurry! Just Read our blog',
        'Twitter said it will add transcriptions for voice tweets as part of an initiative to promote accessibility within its products. It’s also expanding the voice tweet feature, which is still only available on iOS, effective immediately.',
        '',
        'Oct 22',
        Color.fromARGB(255, 222, 108, 145)));

    //8
    _emails.add(Email(
        'DigitalOcean',
        'Welcoming Hacktoberfest 2020...with New Rules',
        'October is here, and so is Hacktoberfest!',
        'Your pull requests will count toward your participation if they are in a repository with the hacktoberfest topic and once they have been merged, approved by a maintainer or labelled as hacktoberfest-accepted.',
        '',
        'Oct 22',
        Color.fromARGB(255, 148, 164, 173)));
    //9
    _emails.add(Email(
        'Coursera',
        'Recommended: IBM Data Science for you is the perfect candidate',
        'Recommendations for you.',
        'We combed our catalog and found courses that we think match your interests. Browse our recommendations below, and start learning something new today!Earn your Masters degree 100% online from top universities like the Univeristy of Illinois',
        '',
        'Oct 22',
        Color.fromARGB(255, 123, 136, 197)));
    //10
    _emails.add(Email(
        'Kaggle',
        'Competition Launch: Riiid! Answer Correct Prediction',
        'Answer Correctness Prediction',
        'Hi rishabhsharma3617,You’re familiar with machine learning, but how about “machine teaching?” Providing students equitable access to personalized learning could improve students engagement and attendance. Apply your data science skills to enable teachers and students to better understand their interactions.',
        '',
        'Oct 22',
        Color.fromARGB(255, 243, 170, 71)));
  }

  List<Email> get getEmails => _emails;
}

class Email {
  String _sender;
  String _title;
  String _heading;
  String _textContent;
  String _time;
  String _date;
  Color _thumbnailColor;

  Email(this._sender, this._title, this._heading, this._textContent, this._time,
      this._date, this._thumbnailColor);

  String get getTitle => _title;
  String get getSender => _sender;
  String get getHeading => _heading;
  String get getTextContent => _textContent;
  String get getTime => _time;
  String get getDate => _date;
  Color get getThumbNailColor => _thumbnailColor;
}
