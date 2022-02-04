import 'package:flutter/material.dart';

class WidgetAppbar extends StatelessWidget {
  const WidgetAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'XXX',
        theme: ThemeData(primarySwatch: Colors.green),
        home: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              onPressed: (){},
              icon: const Icon(Icons.share),
            ),
            title: const Text('AppBar'),
            actions : <Widget> [
              IconButton(
                onPressed:(){
                  showDialog(
                    context: context,
                    builder: (context){
                      return const AlertDialog(
                        content: Text('Share'),
                      );
                    },
                  );
                },
                icon: const Icon(Icons.share),
              ),
              IconButton(
                onPressed:(){
                  showDialog(
                    context: context,
                    builder: (context){
                      return const AlertDialog(
                        content: Text('Copy'),
                      );
                    },
                  );
                },
                icon: const Icon(Icons.copy),
              ),
              IconButton(
                onPressed:(){
                  showDialog(
                    context: context,
                    builder: (context){
                      return const AlertDialog(
                        content: Text('Favorite'),
                      );
                    },
                  );
                },
                icon: const Icon(Icons.favorite),
              ),
            ],
          ),
        ),
    );
  }

}