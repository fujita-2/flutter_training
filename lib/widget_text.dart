import 'package:flutter/material.dart';

class WidgetText extends StatelessWidget {
  const WidgetText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('テキストWidget'),
        actions : const [
          Icon(Icons.add),
          Icon(Icons.share),
          Icon(Icons.copy)
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children:  <Widget>[
            const Text('Default： あああ １２３'),
            const Text('Bold： あああ １２３', style: TextStyle(fontWeight: FontWeight.bold),),
            const Text('サイズ30： あああ １２３', style: TextStyle(fontSize: 30),),
            const Text('色ピンク： あああ １２３', style: TextStyle(color: Colors.pink),),
            const Text('右揃え(効いていない・・・なぜ？？)', textAlign: TextAlign.right,),//ToDo:効かない。なぜ？？
            const Text('左揃え(効いていない・・・なぜ？？)', textAlign: TextAlign.left,),//ToDo:効かない。なぜ？？

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