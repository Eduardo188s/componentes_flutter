import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica_3/screens/data_screen.dart';
import 'package:practica_3/screens/images_screen.dart';
import 'package:practica_3/screens/infinite_scroll_screen.dart';
import 'package:practica_3/screens/input_screen.dart';
import 'package:practica_3/screens/notification_screen.dart';
import 'package:practica_3/theme/app_theme.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen ({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
   int indexNavigation = 0;
   

    openScreen(int index, BuildContext context){
    MaterialPageRoute ruta = MaterialPageRoute(builder: (context) => const HomeScreen
    ());

    switch(index){
    case 0:
      ruta = MaterialPageRoute(
        builder: (context) => const InfiniteScrollScreen());
        break;
      case 1: 
        ruta = MaterialPageRoute(
          builder: (context) => const NoticationsScreen());
        break;
      case 2:
        ruta = MaterialPageRoute(
          builder: (context) => const HomeScreen());
      break;
      case 3:
      ruta = MaterialPageRoute(
        builder: (context) => const ImagesScreen());
      break;
      case 4: SystemChannels.platform.invokeMethod('SystemNavigation.pop');
      break;
    }
    setState(() {
      indexNavigation = index;
      Navigator.push(context, ruta);
    });
    }
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
                  return const InfiniteScrollScreen();
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
            ),
            const Divider(),
            ListTile(
              title: Text('Imagenes',
              style: AppTheme.ligthTheme.textTheme.headlineLarge
              ),
              subtitle: Text('Mostrar imagenes',
              style: AppTheme.ligthTheme.textTheme.bodySmall
              ),
              leading: IconTheme(
                data: AppTheme.ligthTheme.iconTheme,
                child: const Icon(Icons.image_outlined),
                ),
              
              trailing: IconTheme(
                data: AppTheme.ligthTheme.iconTheme,
                child: const Icon(Icons.arrow_right_alt_outlined
                ),
              ),

                 onTap: () {
                final ruta4 = MaterialPageRoute(builder: (context){
                  return const ImagesScreen();
                });
                Navigator.push(context, ruta4);
              },
            ),
          ],
        ),
          bottomNavigationBar: BottomNavigationBar(
        currentIndex: indexNavigation,
           backgroundColor: const Color.fromARGB(156, 78, 216, 85),
           unselectedItemColor: Colors.black,
           selectedItemColor: const Color.fromARGB(255, 15, 12, 121),
           onTap: (index) => openScreen (index, context),
       items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notificaciones'
              ),
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.image),
            label: 'Imagenes'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.exit_to_app),
            label: 'Salir'
            ),
          ]
        ),
    );
  }
}