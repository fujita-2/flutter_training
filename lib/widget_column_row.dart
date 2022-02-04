import 'package:flutter/material.dart';

class WidgetColumnRow extends StatelessWidget {
  const WidgetColumnRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('縦・横に並べる'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.grey,
              child: Column(
                children: const <Widget>[
                  Text('1行目'),
                  Text('2行目'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.lightBlue,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Text('中央寄せ　1行目'),
                  Text('中央寄せ　2行目'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.lime,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: const <Widget>[
                  Text('下寄せ　1行目'),
                  Text('下寄せ　2行目'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 80,
              color: Colors.deepOrangeAccent,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: const <Widget>[
                  Text('均等割り付け　1行目'),
                  Text('均等割り付け　2行目'),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 40,
              color: Colors.grey,
              child: Row(
                children: <Widget>[
                  Container(color: Colors.blue, child: const Text('＊＊＊'),),
                  Container(color: Colors.yellow, child: const Text('＊＊＊'),),
                  Container(color: Colors.red, child: const Text('＊＊＊'),),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(color: Colors.blue, child: const Text('＊＊＊'),),
                  Container(color: Colors.yellow, child: const Text('中央寄せ'),),
                  Container(color: Colors.red, child: const Text('＊＊＊'),),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 40,
              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Container(color: Colors.blue, child: const Text('＊＊＊'),),
                  Container(color: Colors.yellow, child: const Text('右寄せ'),),
                  Container(color: Colors.red, child: const Text('＊＊＊'),),
                ],
              ),
            ),

            ElevatedButton(
                child: const Text('前ページに戻る！'),
                onPressed:(){
                  Navigator.pop(context,);
                }
            ),
          ],
        ),
      ),
    );
  }

}