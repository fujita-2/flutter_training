import 'package:flutter/material.dart';
import 'package:flutter_training/widget_text.dart';
import 'package:flutter_training/widget_backcolor_margin_line.dart';
import 'package:flutter_training/widget_column_row.dart';
import 'package:flutter_training/widget_button.dart';
import 'package:flutter_training/widget_list.dart';
import 'package:flutter_training/widget_appbar.dart';
import 'package:flutter_training/widget_stateful_widget.dart';
import 'package:flutter_training/todo_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Training',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                child: const Text('テキストWidgetページへ'),
                onPressed:() {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=>const WidgetText()
                      )
                  );
                }
            ),
            ElevatedButton(
                child: const Text('背景・余白・枠線ページへ'),
                onPressed:() {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=>const WidgetBackcolorMarginLine()
                      )
                  );
                }
            ),
            ElevatedButton(
                child: const Text('縦・横に並べるページへ'),
                onPressed:() {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=>const WidgetColumnRow()
                      )
                  );
                }
            ),
            ElevatedButton(
                child: const Text('ボタンページへ'),
                onPressed:() {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=>const WidgetButton()
                      )
                  );
                }
            ),
            ElevatedButton(
                child: const Text('リストページへ'),
                onPressed:() {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=>WidgetList()
                      )
                  );
                }
            ),
            ElevatedButton(
                child: const Text('AppBarページへ'),
                onPressed:() {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=>const WidgetAppbar()
                      )
                  );
                }
            ),
            ElevatedButton(
                child: const Text('StatefulWidgetページへ'),
                onPressed:() {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=>const MyStatefulWidget()
                      )
                  );
                }
            ),
            ElevatedButton(
                child: const Text('ToDoリストページへ'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.lime,
                ),
                onPressed:() {
                  Navigator.push(context,
                      MaterialPageRoute(
                          builder: (context)=>const TodoListPage()
                      )
                  );
                }
            ),

          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
