import 'package:flutter/material.dart';

class ListItem extends StatelessWidget {
  final String str;
  final bool done;
  final dynamic deleteTodo;
  final dynamic toggleCheck;
  ListItem(this.str, this.done, this.deleteTodo, this.toggleCheck);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.amber,
        border: Border.all(
          color: Colors.blue,
        ),
        borderRadius: BorderRadius.circular(13.0),
      ),
      margin: EdgeInsets.only(top: 20),
      child: Row(
        children: [
          Checkbox(
              value: done,
              onChanged: (bool value) {
                toggleCheck(str);
              }),
          if (done)
            Text(
              '$str',
              style: TextStyle(
                fontSize: 23.0,
                decoration: TextDecoration.lineThrough,
              ),
            )
          else
            Text(
              '$str',
              style: TextStyle(
                fontSize: 23.0,
              ),
            ),
          Spacer(),
          Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                  icon: Icon(
                    Icons.delete,
                    color: Colors.redAccent,
                  ),
                  onPressed: () {
                    deleteTodo(str);
                  })),
        ],
      ),
    );
  }
}
