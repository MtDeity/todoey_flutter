import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  TaskTile({this.taskTitle, this.checkboxState, this.checkboxCallback});
  final String taskTitle;
  final bool checkboxState;
  final Function checkboxCallback;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskTitle,
        style: TextStyle(
          decoration:
              checkboxState ? TextDecoration.lineThrough : TextDecoration.none,
        ),
      ),
      trailing: Checkbox(
        value: checkboxState,
        onChanged: checkboxCallback,
      ),
    );
  }
}

//          setState(() {
//            isChecked = checkboxState;
//          });

//class TaskCheckbox extends StatelessWidget {
//  TaskCheckbox({this.checkboxState, this.toggleCheckbox});
//  final bool checkboxState;
//  final Function toggleCheckbox;
//
//  @override
//  Widget build(BuildContext context) {
//    return Checkbox(
//      value: checkboxState,
//      onChanged: toggleCheckbox,
//    );
//  }
//}

//ToDo 1. ToDoを追加できるようにしていく、まずTaskListをstfulにする、tasksというリストのプロパティを作る
//ToDo 2. modelsフォルダにtask.dartを作る、コンストラクタはfinal String nameとbool isDone、isDoneはデフォルトでfalseにしておく
//ToDo 3. toggleDoneメソッドを作る、isDoneに逆を入れる
//ToDo 4. tasksリストにTaskインスタンスを入れていく
//ToDo 5. TaskTileをstlessにする、isCheckedをfinalに、setStateを逃しておいてcheckboxの分割やめる、valueはisChecked、onChangedは一時コメントアウト
//ToDo 6. TaskTileのコンストラクタはisCheckedとtaskTitle
//ToDo 7. TasksListにいちいちtasksから引っ張ってくるのではなくListView.builderを返すようにする
//ToDo 8. itemBuilderの無名関数の引数はcontext, index、returnでTaskTileを返す、プロパティは`tasks[index].name`のような指定ができる
//ToDo 9. itemBuilderの他にitemCountが必要、tasksの長さ入れる
//ToDo 10. TaskTileのコンストラクタにcheckboxCallback加える、インスタンス生成時に(checkboxState)を引数にsetState内でtoggleDoneする無名関数を加える
