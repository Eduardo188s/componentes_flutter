import 'package:flutter/material.dart';
import 'package:practica_3/screens/input_screen.dart';
import 'package:practica_3/screens/notification_screen.dart';
import 'package:practica_3/theme/app_theme.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title:const Text('Componentes de Flutter'),
        ),
        body: ListView(
          children: <Widget>[
            ListTile(
              title: Text('Entradas',
              //style: theme.of(context).textTheme.headlineLarge,
              style: AppTheme.ligthTheme.textTheme.headlineLarge
              ),
              subtitle:Text('Introduciendo valores',
              style: AppTheme.ligthTheme.textTheme.bodySmall
              ),
              leading: IconTheme(
                data: AppTheme.ligthTheme.iconTheme,
                child :const Icon(Icons.power_input
                ),
               ),
              
              trailing: IconTheme(
                data: AppTheme.ligthTheme.iconTheme,
                child: const Icon(Icons.arrow_right_alt_outlined
                ),
              ),
            
              onTap: () {
                final ruta1 = MaterialPageRoute(builder: (context){
                  return const InputsScreen();
                });
                Navigator.push(context, ruta1);
              },
            
            ),
            const Divider(),
               ListTile(
              title: Text('ListView.builder',
              style: AppTheme.ligthTheme.textTheme.headlineLarge
              ),
              subtitle: Text('Lista con scroll infinito',
              style: AppTheme.ligthTheme.textTheme.bodySmall
              ),
              leading: IconTheme(
                data: AppTheme.ligthTheme.iconTheme ,
                child: const Icon(Icons.list),
                ),
              trailing: IconTheme(
                data: AppTheme.ligthTheme.iconTheme,
                child: const Icon(Icons.arrow_right_alt_outlined
                ),
              ),

                onTap: () {
                final ruta2 = MaterialPageRoute(builder: (context){
                  return const HomeScreen();
                });
                Navigator.push(context, ruta2);
              },

            ),
            const Divider(),
              ListTile(
              title: Text('Notificaciones',
              style: AppTheme.ligthTheme.textTheme.headlineLarge
              ),
              subtitle: Text('Mostrar una notificación',
              style: AppTheme.ligthTheme.textTheme.bodySmall
              ),
              leading: IconTheme(
                data: AppTheme.ligthTheme.iconTheme,
                child: const Icon(Icons.notification_add),
                ),
              
              trailing: IconTheme(
                data: AppTheme.ligthTheme.iconTheme,
                child: const Icon(Icons.arrow_right_alt_outlined
                ),
              ),

                 onTap: () {
                final ruta3 = MaterialPageRoute(builder: (context){
                  return const NoticationsScreen();
                });
                Navigator.push(context, ruta3);
              },
            )
          ],
        )
      );
  }
}