import 'package:flutter/material.dart';
import 'package:lavilla/pantallas/home_screen.dart';
import 'package:provider/provider.dart';
import 'package:lavilla/providers/lavilla_provider.dart';



void main(){
  runApp(const AppState());
}

class AppState extends StatelessWidget {
  const AppState({super.key});  

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LavillaProvider(), lazy: false,)
      ],
      child: const MyApp(),
      );
  }
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
     return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen()
     );
  }


}