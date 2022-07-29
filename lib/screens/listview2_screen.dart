
import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
   
  final options = const['Kardex de productos','Módulos mas activados','Rendimiento de un controlador','Nodos mas activos', 'Informe de comparación de nodos','Gráficas administrativas'];

  const Listview2Screen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista Secundaria')
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, i) => ListTile( 
          title: Text( options[i] ),
          trailing: const Icon( Icons.arrow_forward_ios_outlined, color: Colors.indigo, ),
          onTap: () {
            final game = options[i];
            print( game );
          },
        ), 
        separatorBuilder: ( _ , __ ) => const Divider(), 
      )
    );
  }
}

