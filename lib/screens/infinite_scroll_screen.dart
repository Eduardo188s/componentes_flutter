import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica_3/screens/home_screen.dart';
import 'package:practica_3/screens/images_screen.dart';
import 'package:practica_3/screens/notification_screen.dart';

class InfiniteScrollScreen extends StatefulWidget {
  const InfiniteScrollScreen({super.key});

  @override
  State<InfiniteScrollScreen> createState() => _InfiniteScrollState();
}

class _InfiniteScrollState extends State<InfiniteScrollScreen> {
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
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scroll Infinito'),
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