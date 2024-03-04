import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  bool switchValue = false; // controlar el valor de switch
  double sliderValue = 0;

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
                 const ElevatedButton(
                  onPressed: null, child: Text('Guardar',
                  )
                )
              ],
            )
        ),
        bottomNavigationBar: BottomNavigationBar(
           backgroundColor: const Color.fromARGB(156, 78, 216, 85),
          items: const [
            BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'inicio'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.data_array),
              label: 'Datos'
              ),
            BottomNavigationBarItem(
              icon: Icon(Icons.portable_wifi_off),
              label: 'Perfil'
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
}