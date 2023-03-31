import 'package:flutter/material.dart';

class AltaCounterPage extends StatelessWidget{
  AltaCounterPage({super.key});

  final ValueNotifier<int>_counter = ValueNotifier(0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alta counter app demo provider"),

      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              "You have pished the button this many times:",
            ),




            ValueListenableBuilder<int>(
              valueListenable: _counter,
              builder: (context,value,child){
                return Text(
                  '${_counter.value}',
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            )
          ],
        ),
      ),
    );
    // TODO: implement build
    //throw UnimplementedError();
  }

}