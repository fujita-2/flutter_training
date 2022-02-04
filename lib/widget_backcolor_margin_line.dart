import 'package:flutter/material.dart';

class WidgetBackcolorMarginLine extends StatelessWidget {
  const WidgetBackcolorMarginLine({Key? key}) : super(key: key);

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
              color: Colors.purple,
              width: double.infinity,
              height: 60,
              child: const Text('背景色むらさき 60 × ∞'),
            ),
            Container(
              padding:const EdgeInsets.all(12),
              margin:const EdgeInsets.all(12),
              child: const Text('パディング(内側余白)、マージン(外側余白)'),
            ),
            Container(
              decoration: BoxDecoration(
                  border:Border.all(color: Colors.green,width: 5),
                  borderRadius:BorderRadius.circular(5)
              ),
              child: const Text('幅5の枠線 角丸く'),
            ),
            Container(
              height: 200,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fitHeight,
                  image:AssetImage('image/mtfuji.jpg'), // pubspec.yamlに定義する必要あり
                ),
              ),
              child: const Text('イメージ'),
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