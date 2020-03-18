import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy Milk',
      ),
      trailing: Checkbox(
        value: false,
        onChanged: (value) {},
      ),
    );
  }
}

class ToDoRow extends StatefulWidget {
  ToDoRow(
      {@required this.text,
      @required this.checked,
      @required this.lineThrough});
  final String text;
  final bool checked;
  final bool lineThrough;

  @override
  _ToDoRowState createState() => _ToDoRowState();
}

class _ToDoRowState extends State<ToDoRow> {
  String text;
  bool checked;
  bool lineThrough;

  @override
  void initState() {
    super.initState();
    text = widget.text;
    checked = widget.checked;
    lineThrough = widget.lineThrough;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          text,
          style: TextStyle(
            fontSize: 18.0,
            decoration:
                lineThrough ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
        Checkbox(
          value: checked,
          onChanged: (value) {
            setState(() {
              checked = value;
            });
          },
        ),
      ],
    );
  }
}
