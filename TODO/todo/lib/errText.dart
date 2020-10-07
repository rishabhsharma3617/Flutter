import 'package:flutter/material.dart';

class ErrText extends StatelessWidget {
  const ErrText({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Hint Text',
        errorText: 'Error Text',
        border: OutlineInputBorder(),
      ),
    );
  }
}
