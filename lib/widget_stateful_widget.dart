import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  _MyWidgetState createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyStatefulWidget> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(count.toString(),),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count += 1;
                });
              },
              child: const Text('Count Up'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count -= 1;
                });
              },
              child: const Text('Count Down'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  count = 0;
                });
              },
              child: const Text('Clear'),
            ),

            Container(
              height: 20,
            ),

            ElevatedButton(
                child: const Text('前ページに戻る！'),
                onPressed:(){
                  Navigator.pop(context,);
                }
            ),
          ],
        ),
    );
  }
}