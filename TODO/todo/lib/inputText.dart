import 'package:flutter/material.dart';

class CustomForm extends StatefulWidget {
  final dynamic addTodo;
  String initialValue = '';
  CustomForm({this.addTodo});
  @override
  State<StatefulWidget> createState() {
    return CustomFormState();
  }
}

class CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  final Function(String) addCallback;

  final nameHolder = TextEditingController();

  CustomFormState({this.addCallback});

  String inputTxt = '';
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: InkWell(
              highlightColor: Colors.pinkAccent.withOpacity(0.5),
              radius: 35.0,
              onTap: () {
                if (inputTxt != '') {
                  widget.addTodo(inputTxt);
                  setState(() {
                    inputTxt = '';
                  });
                  nameHolder.clear();
                }
              },
              borderRadius: BorderRadius.circular(45),
              child: Icon(
                Icons.add_circle,
                size: 75.0,
                color: Colors.pinkAccent,
              ),
            ),
          ),
          Container(
            width: 300,
            child: TextFormField(
              // The validator receives the text that the user has entered.
              controller: nameHolder,
              validator: (value) {
                print(value);
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
              onChanged: (text) {
                setState(() {
                  inputTxt = text;
                  print(inputTxt);
                });
              },
              decoration: InputDecoration(
                  hintText: 'Enter TODO', border: const OutlineInputBorder()),
            ),
          )
        ],
      ),
    );
  }
}
