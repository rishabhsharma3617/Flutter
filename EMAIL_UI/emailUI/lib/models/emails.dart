class Emails {
  List<Email> _emails;

  Emails.initializeEmails() {
    _emails = List<Email>();
    //1
    _emails.add(Email(
        'Amazon Alexa Team',
        '[REMINDER] This October,Build Alexa SKills and Earn Sony PlayStation 4',
        'Hurry! Only a few days left over for the Alexa Developer Festive Offer',
        'Publish a Skill in October and get a limited-edition Alexa Developer t-shirt.Continue to publish 3 or more skills this month and you  will receive an Echo Dot in addition to the t-shirt',
        '10:57 AM',
        'Oct 22'));
    //2
    _emails.add(Email(
        'Amazon Alexa Team',
        '[REMINDER] This October,Build Alexa SKills and Earn Sony PlayStation 4',
        'Hurry! Only a few days left over for the Alexa Developer Festive Offer',
        'Publish a Skill in October and get a limited-edition Alexa Developer t-shirt.Continue to publish 3 or more skills this month and you  will receive an Echo Dot in addition to the t-shirt',
        '10:57 AM',
        'Oct 22'));

    //3
    _emails.add(Email(
        'Amazon Alexa Team',
        '[REMINDER] This October,Build Alexa SKills and Earn Sony PlayStation 4',
        'Hurry! Only a few days left over for the Alexa Developer Festive Offer',
        'Publish a Skill in October and get a limited-edition Alexa Developer t-shirt.Continue to publish 3 or more skills this month and you  will receive an Echo Dot in addition to the t-shirt',
        '10:57 AM',
        'Oct 22'));

    //4
    _emails.add(Email(
        'Amazon Alexa Team',
        '[REMINDER] This October,Build Alexa SKills and Earn Sony PlayStation 4',
        'Hurry! Only a few days left over for the Alexa Developer Festive Offer',
        'Publish a Skill in October and get a limited-edition Alexa Developer t-shirt.Continue to publish 3 or more skills this month and you  will receive an Echo Dot in addition to the t-shirt',
        '10:57 AM',
        'Oct 22'));

    //5
    _emails.add(Email(
        'Amazon Alexa Team',
        '[REMINDER] This October,Build Alexa SKills and Earn Sony PlayStation 4',
        'Hurry! Only a few days left over for the Alexa Developer Festive Offer',
        'Publish a Skill in October and get a limited-edition Alexa Developer t-shirt.Continue to publish 3 or more skills this month and you  will receive an Echo Dot in addition to the t-shirt',
        '10:57 AM',
        'Oct 22'));

    //6
    _emails.add(Email(
        'Amazon Alexa Team',
        '[REMINDER] This October,Build Alexa SKills and Earn Sony PlayStation 4',
        'Hurry! Only a few days left over for the Alexa Developer Festive Offer',
        'Publish a Skill in October and get a limited-edition Alexa Developer t-shirt.Continue to publish 3 or more skills this month and you  will receive an Echo Dot in addition to the t-shirt',
        '10:57 AM',
        'Oct 22'));

    //7
    _emails.add(Email(
        'Amazon Alexa Team',
        '[REMINDER] This October,Build Alexa SKills and Earn Sony PlayStation 4',
        'Hurry! Only a few days left over for the Alexa Developer Festive Offer',
        'Publish a Skill in October and get a limited-edition Alexa Developer t-shirt.Continue to publish 3 or more skills this month and you  will receive an Echo Dot in addition to the t-shirt',
        '10:57 AM',
        'Oct 22'));

    //8
    _emails.add(Email(
        'Amazon Alexa Team',
        '[REMINDER] This October,Build Alexa SKills and Earn Sony PlayStation 4',
        'Hurry! Only a few days left over for the Alexa Developer Festive Offer',
        'Publish a Skill in October and get a limited-edition Alexa Developer t-shirt.Continue to publish 3 or more skills this month and you  will receive an Echo Dot in addition to the t-shirt',
        '10:57 AM',
        'Oct 22'));
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

  Email(this._sender, this._title, this._heading, this._textContent, this._time,
      this._date);

  String get getTitle => _title;
  String get getSender => _sender;
  String get getHeading => _heading;
  String get getTextContent => _textContent;
  String get getTime => _time;
  String get getDate => _date;
}
