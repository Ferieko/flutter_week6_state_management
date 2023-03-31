import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
 const MyCounterPage({Key? key}):super(key: key);

  @override
  //State<StatefulWidget> createState() {
  State<MyCounterPage> createState()=>_MyCounterPageState();

    // TODO: implement createState
    //throw UnimplementedError();
  }
  class _MyCounterPageState extends State<MyCounterPage>{
  int _counter =0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("example SetState"),

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
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
    );
    // TODO: implement build
   // throw UnimplementedError();
  }



}