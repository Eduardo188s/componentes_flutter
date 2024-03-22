import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica_3/models/data.dart';
import 'package:practica_3/screens/home_screen.dart';
import 'package:practica_3/screens/images_screen.dart';
import 'package:practica_3/screens/infinite_scroll_screen.dart';
import 'package:practica_3/screens/notification_screen.dart';
import 'package:practica_3/theme/app_theme.dart';

class DataScreen extends StatefulWidget {
  final Data datos;
  final String gustaFlutterText;
  const DataScreen({super.key, required this.datos, required this.gustaFlutterText});
  

  @override
  State<DataScreen> createState() => _DataScreenState();
}

class _DataScreenState extends State<DataScreen> {
   int indexNavigation = 0;
   String gustoFlutter = 'gusto';


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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Datos'),
      ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ListTile(
                title: Text(
                  'Nombre:',
                  style: AppTheme.ligthTheme.textTheme.headlineMedium,
                ),
                subtitle: Text(
                  widget.datos.nombre!,
                  style: AppTheme.ligthTheme.textTheme.headlineLarge,
                ),
              ),
              const Divider(),
              ListTile(
                title: Text('Te gusta Flutter:',
                style: AppTheme.ligthTheme.textTheme.headlineMedium,
                ),
                subtitle: Text('${widget.datos.gustoFlutter}',
                style: AppTheme.ligthTheme.textTheme.headlineLarge,
                ),
              ),
              const Divider(),
              ListTile(
                title: Text('Calificación Flutter:',
                style: AppTheme.ligthTheme.textTheme.headlineMedium,
                ),
                subtitle: Text('${widget.datos.califFlutter}',
                style: AppTheme.ligthTheme.textTheme.headlineLarge,
                ),
              ),
              const Divider(),
              ListTile(
                title: Text('Dispositivo Móvil:',
                style: AppTheme.ligthTheme.textTheme.headlineMedium,
                ),
                subtitle: Text('${widget.datos.movilDev}',
                style: AppTheme.ligthTheme.textTheme.headlineLarge,),
              ),
              const Divider(),
              ListTile(
                title: Text('Navegación Web:',
                style: AppTheme.ligthTheme.textTheme.headlineMedium,
                ),
                subtitle: Text('${widget.datos.smartphone}',
                style: AppTheme.ligthTheme.textTheme.headlineLarge,
                ),
              ),
            ]
          ),
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