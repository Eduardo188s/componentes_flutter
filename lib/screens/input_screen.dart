import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:practica_3/models/data.dart';
import 'package:practica_3/screens/data_screen.dart';
import 'package:practica_3/screens/home_screen.dart';
import 'package:practica_3/screens/images_screen.dart';
import 'package:practica_3/screens/infinite_scroll_screen.dart';
import 'package:practica_3/screens/notification_screen.dart';
import 'package:practica_3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  String? nombre;
  bool switchValue = false; // controlar el valor de switch
  double sliderValue = 0;
  String? radioSelected;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;
  int indexNavigation = 0;

  openScreen(int index, BuildContext context){
    MaterialPageRoute ruta = MaterialPageRoute(builder: (context) => const HomeScreen());

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
        title: const Text('Entradas'),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            entradaNombre(),
            entradaSwitch(),
            entradaSlider(),
            entradaRadio(),
            Text('¿Qué usas para correr tus Apps?',
            style: AppTheme.ligthTheme.textTheme.headlineLarge,
            ),
            entradasCheck(),
      ElevatedButton(
              onPressed: () {
                Data data = Data(
                  nomb: nombre!, 
                  gusto: switchValue, 
                  calif: sliderValue.round(), 
                  movil: radioSelected!, 
                  nav: isChecked1, 
                  emul: isChecked2, 
                  smart: isChecked3);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataScreen(datos: data,)),
                );
              },
              child: const Text('Guardar'),
                )
              ],
            )
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

  TextField entradaNombre() {
    return TextField(
          style: AppTheme.ligthTheme.textTheme.headlineMedium,
          decoration: InputDecoration(
            border:const UnderlineInputBorder(),
            labelText: 'Escribe tu nombre',
            labelStyle: AppTheme.ligthTheme.textTheme.headlineLarge
          ),
          onChanged: (text) => nombre = text,
        );
  }

  Row entradaSwitch(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('¿Te gusta Flutter?',
        style: AppTheme.ligthTheme.textTheme.headlineLarge,
        ),
        Switch(
          activeColor: AppTheme.secondatyColor,
          value: switchValue, 
          onChanged: (value){
            setState(() {
              switchValue = value;
            });
          },
          ),
      ],
    );
  }

  Column entradaSlider(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text('¿Que tanto te gusta Flutter?',
        style: AppTheme.ligthTheme.textTheme.headlineLarge,
        ),
        Slider(
          min: 0.0,
          max: 10.0,
          activeColor: AppTheme.secondatyColor,
          value: sliderValue, 
          divisions: 10,
          label: '${sliderValue.round()}',
          onChanged: (value){
            setState(() {
              sliderValue = value;
            });
          }
        )
      ],
    );
  }

  Column entradaRadio(){
    return Column(
      children: [
        Text('¿Qué prefieres para desarrollo movil',
        style:AppTheme.ligthTheme.textTheme.headlineLarge
        ),
        ListTile(
          title: Text('Kottlin',
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 'Kotlin',
              groupValue: radioSelected,
              onChanged: (value){
                setState(() {
                  radioSelected = value!;
                });
              },
            ),
          ),
        ),
        ListTile(
          title: Text('Flutter',
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
          ),
          leading: Transform.scale(
            scale: 1.5,
            child: Radio(
              value: 'Flutter',
              groupValue: radioSelected,
              onChanged: (value){
                setState(() {
                  radioSelected = value!;
                });
              },
            ),
          ),
        )
      ],
    );
  }

  Row entradasCheck(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text('Navegador',
        style: AppTheme.ligthTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isChecked1, 
            onChanged: (value){
              setState(() {
                isChecked1 = value!;
              });
            }
          ),
        ),
        Text('Emulador',
        style: AppTheme.ligthTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isChecked2, 
            onChanged: (value){
              setState(() {
                isChecked2 = value!;
              });
            }
          ),
        ),
        Text('Smarphone',
        style: AppTheme.ligthTheme.textTheme.bodySmall,
        ),
        Transform.scale(
          scale: 1.5,
          child: Checkbox(
            value: isChecked3, 
            onChanged: (value){
              setState(() {
                isChecked3 = value!;
              });
            }
          ),
        ),
      ],
    );
  }

}