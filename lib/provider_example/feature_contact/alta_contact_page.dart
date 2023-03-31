import 'package:flutter/material.dart';
import 'package:flutter_week6_state_management/provider_example/feature_contact/provider/contact.dart';
import 'package:provider/provider.dart';


class AltaContactPage extends StatelessWidget{
  const AltaContactPage({Key? key}):super(key: key);

  @override
  Widget build(BuildContext context) {
    final contactProvider = Provider.of<Contact>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Alta Counter App Demo Provider"),

      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: contactProvider.contacts.length,
              shrinkWrap: true,
            itemBuilder: (context,index){
              return ListTile(
                title: Text(contactProvider.contacts[index].nama),
                 subtitle: Text(contactProvider.contacts[index].nomorTelepon),
              );
            },
          )
        ],
      ),
    );
    // TODO: implement build
   // throw UnimplementedError();
  }


}