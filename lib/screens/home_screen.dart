import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Componentes de Flitter'),
        ),
        body: ListView(
          children: const <Widget>[
            ListTile(
              title: Text('El America es Campeón '),
              subtitle: Text('14 Copas MX'),
              leading: Icon(Icons.casino_sharp),
              trailing: Icon(Icons.arrow_right_alt_outlined),
            ),
            Divider(),
              ListTile(
              title: Text('A por la 15 '),
              subtitle: Text('Las aguilas del America 🏆'),
              leading: Icon(Icons.castle_outlined),
              trailing: Icon(Icons.arrow_right_alt_outlined),
            ),
            Divider(),
              ListTile(
              title: Text('Son los mejores de la liga'),
              subtitle: Text('America, America a ganar!!!'),
              leading: Icon(Icons.call_split_rounded),
              trailing: Icon(Icons.arrow_right_alt_outlined),
            )
          ],
        )
      );
  }
}