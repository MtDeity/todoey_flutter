import 'package:flutter/material.dart';

class TaskTile extends StatefulWidget {
  @override
  _TaskTileState createState() => _TaskTileState();
}

class _TaskTileState extends State<TaskTile> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        'Buy Milk',
        style: TextStyle(
          decoration:
              isChecked ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: TaskCheckbox(
        checkboxState: isChecked,
        toggleCheckbox: (bool checkboxState) {
          setState(() {
            isChecked = checkboxState;
          });
        },
      ),
    );
  }
}

class TaskCheckbox extends StatelessWidget {
  TaskCheckbox({this.checkboxState, this.toggleCheckbox});
  final bool checkboxState;
  final Function toggleCheckbox;

  @override
  Widget build(BuildContext context) {
    return Checkbox(
      value: checkboxState,
      onChanged: toggleCheckbox,
    );
  }
}

//ToDo 3. isCheckedなら打ち消し線引きたいのでisCheckedをTaskTileに移す、TaskTileを右クリックでStatefulに、TaskCheckboxはStatelessにする
//ToDo 4. TaskCheckboxのコンストラクタにcheckboxStateを作る、isCheckedをcheckboxStateで置き換えるがsetStateはひとまずコメントアウトしておく
//ToDo 5. TextStyleにdecorationでlineThroughつける、isCheckedなら打ち消し、falseならnull
//ToDo 6. TaskCheckboxのsetStateをcheckboxCallbackとしてTaskTileの関数にする、引数はcheckboxState
//ToDo 7. TaskCheckboxのコンストラクタにfinal Function toggleCheckBoxを加える
//ToDo 8. 引数には無名関数で入れ、checkboxCallbackは消す
