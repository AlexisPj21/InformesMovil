
import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
   
  final options = const['Inventario','Stock de productos','Informe diario','Informe trimestral', 'Informe anual','Resumen de venta de prodcutos','Resumen de ventas por grupo'];

  const Listview1Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Principal'),
      ),
      body: ListView(
        children: [
          
          ...options.map(
            (game) => ListTile( 
              title: Text( game ),
              trailing: const Icon( Icons.arrow_forward_ios_outlined ),
            )
          ).toList(),


        ],
      )
    );
  }
}

