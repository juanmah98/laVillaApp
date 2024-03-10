import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:lavilla/models/la_villa_response.dart';

class LavillaProvider extends ChangeNotifier{


  final String _baseUrl = 'https://addmvoweucwjcwvpxhmu.supabase.co';
  final String _authorization = 
  'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFkZG12b3dldWN3amN3dnB4aG11Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTg1ODM0MzksImV4cCI6MjAxNDE1OTQzOX0.mC2KFnIB5anNqibruSE8c20ts3UguPP1JtaD5PRlwzI';
  final String _apiKey = 
  'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImFkZG12b3dldWN3amN3dnB4aG11Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2OTg1ODM0MzksImV4cCI6MjAxNDE1OTQzOX0.mC2KFnIB5anNqibruSE8c20ts3UguPP1JtaD5PRlwzI';

  List<LaVillaResponse> onDisplayVillas = [];

  LavillaProvider(){
    print('Provider inicializado');
    
    this.getOnDisplayVillas();
  }

  getOnDisplayVillas() async{
    var url = Uri.parse('$_baseUrl/rest/v1/villa'); 
    

    final response = await http.get(
      url,
      headers: {
        'apikey': _apiKey,
        'Authorization': _authorization,
      }
      
      );

   final List<dynamic> responseData = json.decode(response.body);

// Iterar sobre cada elemento de la lista y convertirlo a LaVillaResponse
    if (response.statusCode == 200) {
    final List<dynamic> responseData = json.decode(response.body);

    List<LaVillaResponse> villas = []; // Lista para almacenar objetos LaVillaResponse

    for (var jsonItem in responseData) {
      final nowPlayingResponse = LaVillaResponse.fromJson(jsonItem);
      villas.add(nowPlayingResponse); // Agregar cada objeto a la lista
    }

    onDisplayVillas = villas; // Asignar la lista completa a onDisplayVillas
    notifyListeners();
  } else {
    print('Failed to get villas: ${response.statusCode}');
  }

     notifyListeners();

    }
    
  }
