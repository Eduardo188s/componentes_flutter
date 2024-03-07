import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';
import 'package:transparent_image/transparent_image.dart';

class ImagesScreen extends StatefulWidget {
  const ImagesScreen({super.key});
  

  @override
  State<ImagesScreen> createState() => _ImagesScreenState();
  
}

class _ImagesScreenState extends State<ImagesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imagenes'),
      ),
      body: ListView(
        children: [
           cardImage1(),
           image2(),
           imageFade(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          // currentIndex: indexNavigation,
          //  backgroundColor: const Color.fromARGB(156, 78, 216, 85),
          //  unselectedItemColor: Colors.black,
          //  selectedItemColor: const Color.fromARGB(255, 15, 12, 121),
          //  onTap: (index) => openScreen (index, context),
       items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'inicio'
            ),
            BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: 'Lista'
              ),
            BottomNavigationBarItem(
            icon: Icon(Icons.notification_add),
            label: 'Notificaciones'
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
  Card cardImage1(){
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      margin: const EdgeInsets.all(15),
      elevation: 15,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Column(
        children: [
          const Image(
            image: AssetImage('assets/img/InverNova.jpg')
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: Text(
                'InverNova',
                style: AppTheme.ligthTheme.textTheme.headlineLarge,
              ),
            ),
          ],
        ),
      )
    );
  }
  SizedBox image2(){
    return SizedBox(
      height: 200,
      width: 100,
      child: Image.network(
       'https://th.bing.com/th/id/OIP.4SFSNkGT--C7_WgDSgPgdgHaD0?rs=1&pid=ImgDetMain'
        ),
    );
  }
  Stack imageFade(){
    return Stack(
      children: <Widget>[
        const Center(
          child: CircularProgressIndicator(),
        ),
        Center(
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage, 
            image: 'https://th.bing.com/th/id/OIP.4SFSNkGT--C7_WgDSgPgdgHaD0?rs=1&pid=ImgDetMain'),
        ),
      ],
    );
  }
}