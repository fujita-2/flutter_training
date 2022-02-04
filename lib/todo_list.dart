import 'package:flutter/material.dart';
import 'package:flutter_training/todo_input.dart';

class TodoListPage extends StatefulWidget {
  const TodoListPage({Key? key}) : super(key: key);

  @override
  _TodoListPageState createState() => _TodoListPageState();
}

class _TodoListPageState extends State<TodoListPage> {
  // Todoリストのデータ
  List<String> todoList = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ToDo一覧'),
        backgroundColor: Colors.lime,
      ),
      body: ListView.builder(
        itemCount: todoList.length,
        itemBuilder: (context, index) {
          return Dismissible(
            key: ObjectKey(todoList[index]),
            background: Container(
              alignment: Alignment.centerLeft,
              color: Colors.red,
              child: const Icon(Icons.delete,),
            ),
            secondaryBackground: Container(
              alignment: Alignment.centerLeft,
              color: Colors.yellow,
              child: const Icon(Icons.delete,),
            ), // end to startの背景
            onDismissed: (direction) {
              setState(() {
                todoList.removeAt(index);
              });
              if (direction == DismissDirection.endToStart) {
              } else {
              }
            },
            child: Card(
              child: ListTile(
                title: Text(todoList[index]),
                onTap: () {
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.lime,
        onPressed: () async {
          // "push"で新規画面に遷移
          // リスト追加画面から渡される値を受け取る
          final newListText = await Navigator.of(context).push(
            MaterialPageRoute(builder: (context) {
              // 遷移先の画面としてリスト追加画面を指定
              return const TodoInputPage();
            }),
          );
          if (newListText != null) {
            // キャンセルした場合は newListText が null となるので注意
            setState(() {
              // リスト追加
              todoList.add(newListText);
            });
          }
        },
        child: const Icon(Icons.add),
        tooltip: 'ToDoの追加はここから',
      ),
    );
  }
}
