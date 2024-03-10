
import 'package:flutter/material.dart';
import 'package:lavilla/providers/lavilla_provider.dart';
import 'package:lavilla/widgets/custom_widgets.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {

final villasProvider = Provider.of<LavillaProvider>(context);

  print(villasProvider.onDisplayVillas);

    return Scaffold(
      /* appBar: AppBar(
        title: const Text("Home"),
        elevation: 0,
      ), */
      backgroundColor: Color.fromARGB(255, 236, 236, 236),
      body: /* Column(
        children: [
          CustomAppBar(),
          HomeCustom()
        ],
      ), */

      Container(
         decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.0, 1.0],
              colors: [
                Color(0xFFFFFFFF), // Blanco
                Color(0xFFEBEBEB), // Gris claro
              ],
            ),
          ),
           child: Column(
            children: [
                // App bar principal customizado
                CustomAppBar(villas: villasProvider.onDisplayVillas), 
                
                // Home principal customizado
                HomeCustom()
            
            ],
          ),
      )
      
    );
  }

}