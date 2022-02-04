import 'package:flutter/material.dart';

class WidgetButton extends StatelessWidget {
  const WidgetButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('背景・余白・枠線'),
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:  <Widget>[
            Container(
              padding:const EdgeInsets.only(top: 5),
              child: const Text('TextButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                const TextButton(
                    onPressed: null,
                    child: Text('disabled')
                ),
                TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context){
                          return const AlertDialog(
                            content: Text('真ん中　押したよ'),
                          );
                        },
                      );
                    },
                    child: const Text('enabled')
                ),
                TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context){
                          return const AlertDialog(
                            content: Text('右端 押したよ'),
                          );
                        },
                      );
                    },
                    style: TextButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: const Text('enabled')
                ),
              ],
            ),

            Container(
              padding:const EdgeInsets.only(top: 5),
              child: const Text('OutlinedButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                const OutlinedButton(
                    onPressed: null,
                    child: Text('disabled')
                ),
                OutlinedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context){
                          return const AlertDialog(
                            content: Text('真ん中　押したよ'),
                          );
                        },
                      );
                    },
                    child: const Text('enabled')
                ),
                OutlinedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context){
                          return const AlertDialog(
                            content: Text('右端 押したよ'),
                          );
                        },
                      );
                    },
                    style: OutlinedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: const Text('enabled')
                ),
              ],
            ),

            Container(
              padding:const EdgeInsets.only(top: 5),
              child: const Text('ElevatedButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                const ElevatedButton(
                    onPressed: null,
                    child: Text('disabled')
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context){
                          return const AlertDialog(
                            content: Text('真ん中　押したよ'),
                          );
                        },
                      );
                    },
                    child: const Text('enabled')
                ),
                ElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context){
                          return const AlertDialog(
                            content: Text('右端 押したよ'),
                          );
                        },
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                    ),
                    child: const Text('enabled')
                ),
              ],
            ),

            Container(
              padding:const EdgeInsets.only(top: 5),
              child: const Text('IconButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                const IconButton(
                  onPressed: null,
                  icon: Icon(Icons.thumb_up),
                ),
                IconButton(
                  color: Colors.red,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context){
                        return const AlertDialog(
                          content: Text('color=red'),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.favorite),
                ),
                IconButton(
                  iconSize: 60,
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context){
                        return const AlertDialog(
                          content: Text('iconSize=60'),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.flight),
                ),
              ],
            ),

            Container(
              padding:const EdgeInsets.only(top: 5),
              child: const Text('IconButton'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:  [
                TextButton.icon(
                  onPressed: null,
                  icon: const Icon(Icons.thumb_up),
                  label: const Text('Good!!'),
                ),
                OutlinedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context){
                        return const AlertDialog(
                          content: Text('color=red'),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.favorite, color: Colors.red,),
                  label: const Text('Favorite!!'),
                ),
                ElevatedButton.icon(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context){
                        return const AlertDialog(
                          content: Text('iconSize=60'),
                        );
                      },
                    );
                  },
                  icon: const Icon(Icons.flight, size: 60,),
                  label: const Text('Flight!!'),
                ),
              ],
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
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) {
                return const AlertDialog(
                  content: Text('floatingActionButton'),
                );
              },
            );
          },
        child: const Icon(Icons.alarm),
      ),
    );
  }

}