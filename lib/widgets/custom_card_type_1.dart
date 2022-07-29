import 'package:flutter/material.dart';
import 'package:fl_components/theme/app_theme.dart';


class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [

          const ListTile(
            leading: Icon( Icons.photo_album_outlined, color: AppTheme.primary  ),
            title: Text('Informacion'),
            subtitle: Text('Aqui encontraremos cierta informacion junto con imagenes acerca de la seccion informes la cual trata de propocionar un orden en sus registros para poder asi realizar un analisis de ganancias e inventario a futuro.'),
          ),
        
          Padding(
            padding: const EdgeInsets.only( right: 5 ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Mas informacion'),
                ),
                TextButton(
                  onPressed: () {}, 
                  child: const Text('Entendido'),
                ),
              ],
            ),
          )

        ],
      )
    );
  }
}
