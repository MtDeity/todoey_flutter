import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey_flutter/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String newTaskTitle;

    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.0),
            topRight: Radius.circular(20.0),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                'Add Task',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.lightBlueAccent,
                  fontSize: 30.0,
                ),
              ),
              TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value) {
                  newTaskTitle = value;
                },
              ),
              FlatButton(
                onPressed: () {
                  Provider.of<TaskData>(context, listen: false)
                      .addTask(newTaskTitle);
                  Navigator.pop(context);
                },
                color: Colors.lightBlueAccent,
                child: Text(
                  'Add',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Todo 1. TaskDataにaddTaskメソッド作る、newTaskTitleを引数にfinal taskを作りリストに追加する、notifyListenersをつけて反映する
//Todo 2. add_task_screenでボタン押したらaddTaskメソッド実行してからボトムシート消す
//Todo 3. 外部から間違えて変えないようにtasksを_tasksにする
//Todo 4. ただ読むのもできなくなってエラー出るので`List<Task> get tasks`でgetメソッド作る、_tasksを返す
//Todo 5. 間違って変わらないように`UnmodifiableListView<Task> get tasks`にする、returnもUnmodifiableListView(_tasks)にする、addメソッドをつけるとエラーを返す
