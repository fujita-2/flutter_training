import 'package:flutter/material.dart';

class WidgetList extends StatelessWidget {
  WidgetList({Key? key}) : super(key: key);
  final List<Map<String, dynamic>> listItems = [
    {
      'text' : 'Item1',
      'color' : Colors.blue,
    },
    {
      'text' : 'Item2',
      'color' : Colors.yellow,
    },
    {
      'text' : 'Item3',
      'color' : Colors.red,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('リスト表示'),
      ),

      body: Column(
        children:  <Widget>[
          Container(
            padding: const EdgeInsets.all(5.0),
            height: 125,
            child: ListView(
              children: <Widget>[
                Container(
                  height: 50,
                  color: Colors.blue,
                  child: const Text('Item 1'),
                ),
                Container(
                  height: 15,
                  color: Colors.yellow,
                  child: const Text('Item 2'),
                ),
                Container(
                  height: 50,
                  color: Colors.red,
                  child: const Text('Item 3'),
                ),
              ]
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            height: 125,
            child: ListView.builder(
                itemCount: listItems.length,
                itemBuilder: (context, index) {
                  return Container(
                    height: 50,
                    color: listItems[index]['color'],
                    child: Text(listItems[index]['text']),
                  );
                }
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            height: 125,
            child: ListView.separated(
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return Container(
                  height: 30,
                  color: listItems[index]['color'],
                  child: Text(listItems[index]['text']),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return const Divider();
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(5.0),
            height: 240,
            child : Column(
              children:  <Widget>[
                ListTile(
                  leading: Image.asset('image/cub.jpg'),
                  title:const Text('SuperCub'),
                  subtitle:const Text('C100'),
                  trailing:const Icon(Icons.more_vert),
                ),
                const Card(
                  child: SizedBox(
                    height:60,
                    width:double.infinity,
                    child:Text('Made by Honda'),
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: Image.asset('image/cub.jpg'),
                    title:const Text('SuperCub'),
                    subtitle:const Text('C100'),
                    trailing:const Icon(Icons.more_vert),
                    tileColor: Colors.lightBlue,
                    onTap: (){
                      showDialog(
                        context: context,
                        builder: (context){
                          return const AlertDialog(
                            content: Text('Made by Honda'),
                          );
                        },
                      );
                    },
                  ),
                ),
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
    );
  }
}