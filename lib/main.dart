import 'package:flutter/material.dart';
import 'package:flutter_week6_state_management/provider_example/feature_contact/alta_contact_page.dart';
import 'package:flutter_week6_state_management/provider_example/feature_contact/model/contact_model.dart';
import 'package:flutter_week6_state_management/provider_example/feature_contact/provider/contact.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const myApp());
}
class myApp extends StatelessWidget{
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MultiProvider(
          providers:[
            ChangeNotifierProvider(create: (_)=>Contact()
            .. add(ContactModel(nama: 'joni', nomorTelepon: '0341')),
            )
          ],

        child: const AltaContactPage(),
      ),
    );
    // TODO: implement build
   // throw UnimplementedError();
  }
}