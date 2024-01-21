

import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget{
  const CustomAppBar({super.key});


  @override
  Widget build(BuildContext context) {
   
   return Container(
    width: double.infinity,
    height: 350,    
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(30),
      boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
    ),
    child: Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Row(
                children: [
                  Icon(
                     Icons.circle_outlined,
                      color: Colors.orange,
                      size: 50,
                  ),
                   Text(
                      "Javi Gonzalez",
                      style: TextStyle(fontSize: 18),
                    )
                ],
              ),
              
              Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Colors.orange,
                      size: 30,
                    ),  
                    Icon(
                      Icons.star,
                      color: Colors.green,
                      size: 30,
                    ),                          
                    Icon(
                      Icons.star,
                      color: Colors.red,
                      size: 30,
                    ),      
                    Icon(
                      Icons.star,
                      color: Colors.blue,
                      size: 30,
                    ),     
              
                  ],
                ),
          
               
            ],
          ),
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                child: Container(
                  width: double.infinity,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                  child: Container(
                    width: double.infinity,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 5,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                  ),
                ),
            ],
          ),
           
           const Padding(
             padding: EdgeInsets.symmetric(vertical: 5),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                    Icons.circle,
                    color: Colors.black54,
                    size: 10,
                  ), 
                  Icon(
                    Icons.circle,
                    color: Colors.black54,
                    size: 10,
                  ),   
                  Icon(
                    Icons.circle,
                    color: Colors.black54,
                    size: 10,
                  ),   
                  Icon(
                    Icons.circle,
                    color: Colors.black54,
                    size: 10,
                  ),   
                  Icon(
                    Icons.circle,
                    color: Colors.black87,
                    size: 10,
                  ),        
              ],
             ),
           )
        ],
      ),
    ),
   );
  }

}