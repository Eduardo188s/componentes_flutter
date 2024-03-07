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
  int radioSelected = 0;
  bool isChecked1 = false;
  bool isChecked2 = false;
  bool isChecked3 = false;

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
              value: 1,
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
              value: 2,
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