
import 'package:flutter/material.dart';
import 'package:lavilla/widgets/custom_widgets.dart';

class HomeScreen extends StatelessWidget{
  const HomeScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      /* appBar: AppBar(
        title: const Text("Home"),
        elevation: 0,
      ), */
      backgroundColor: Color.fromARGB(255, 199, 199, 199),
      body: Column(
        children: [
          CustomAppBar(),
          HomeCustom()
        ],
      ),
      
    );
  }

}