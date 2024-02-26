import 'package:flutter/material.dart';
import 'package:practica_3/theme/app_theme.dart';

class InputsScreen extends StatefulWidget {
  const InputsScreen({super.key});

  @override
  State<InputsScreen> createState() => _InputsScreenState();
}

class _InputsScreenState extends State<InputsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Entradas'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Entradas', 
          style: AppTheme.ligthTheme.textTheme.headlineLarge,
          ),
          Row (
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                onPressed: null, child: Text('Regresar',
                style: AppTheme.ligthTheme.textTheme.bodySmall,
                ),
                ),
               ElevatedButton(
                onPressed: null, child: Text('Ventana de datos',
                style: AppTheme.ligthTheme.textTheme.bodySmall,
                )
              )
            ],
          )
        ],
      ),
    );
  }
}